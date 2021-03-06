/**
 *  @file   MarlinPandoraSC/src/EnergyCorrectionSC.cc
 * 
 *  @brief  Implementation of the SC energy correction function algorithm class.
 * 
 *  $Log: $
 */

#include "Pandora/AlgorithmHeaders.h"
#include "EnergyCorrectionSC.h"
#include "PandoraPFANewProcessor.h"

//#include "TFile.h"
//#include "TH1F.h"
//#include "TTree.h"

using namespace pandora;

EnergyCorrectionSC::EnergyCorrectionSC() :
    m_SCEnergyConstants(NULL)
{
  //fCluster = new TFile("ClusterInfo.root","recreate");
  //hClusterE = new TH1F("clusterEnergy", "clusterEnergy", 100, 0, 100);
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::MakeEnergyCorrections(const pandora::Cluster *const pCluster, float &correctedHadronicEnergy) const
{
  std::cout << "EnergyCorrectionSC " << std::endl;

    if(NULL == pCluster)
        throw pandora::StatusCodeException(pandora::STATUS_CODE_INVALID_PARAMETER);

    if(0 == pCluster->GetNCaloHits())
    {
        correctedHadronicEnergy = 0.f;
        return STATUS_CODE_SUCCESS;
    }

    bool isHCalCluster(false), isECalCluster(false);
    
    std::cout << "The hadronic energy for this cluster is:" << pCluster->GetHadronicEnergy() << std::endl;

    pandora::CaloHitList clusterCaloHitList;
    pCluster->GetOrderedCaloHitList().GetCaloHitList(clusterCaloHitList);

    //float clusterEMenergy = pCluster->GetElectromagneticEnergy();
    float clusterHADenergy = pCluster->GetHadronicEnergy();
    //float clusterEnergy = clusterEMenergy + clusterHADenergy;

    //std::cout << "The EM energy for this cluster is:" << clusterEMenergy
    //<< " HAD energy " << clusterHADenergy
    //	      << std::endl;


    //std::cout << "clusterCaloHitList size " << clusterCaloHitList.size() << std::endl;

    this->clusterType(clusterCaloHitList, isECalCluster, isHCalCluster);

    if (isECalCluster)
        EnergyCorrectionSC::ECalClusterEnergyCorrectionFunction(clusterCaloHitList, correctedHadronicEnergy);

    else if (isHCalCluster){
      EnergyCorrectionSC::SCClusterEnergyCorrectionFunction(clusterHADenergy,clusterCaloHitList, correctedHadronicEnergy);
      //hClusterE->Fill(clusterHADenergy);
    }
    else
      EnergyCorrectionSC::SCHCalECalSplitClusterEnergyCorrectionFunction(clusterHADenergy,clusterCaloHitList, correctedHadronicEnergy);
    
    return STATUS_CODE_SUCCESS;

}


//------------------------------------------------------------------------------------------------------------------------------------------

float FindDensity(float hitEnergy){
  float volume = 0.3*0.3*0.05;
  float mip2gev = 0.0225;

  const int NBIN = 12;
  float lowMIP[NBIN]  = {0.49,  2, 3.5, 5.5,  8, 10, 14, 17, 21, 25, 30, 35};
  float highMIP[NBIN] = {  2, 3.5, 5.5,   8, 10, 14, 17, 21, 25, 30, 35, 1e6};

  float rho = 0;
  float hitEnergyInMIP = hitEnergy/mip2gev;

  for (int ibin = 0; ibin < NBIN; ibin++){
    if (hitEnergyInMIP>=lowMIP[ibin] && hitEnergyInMIP<highMIP[ibin]){
      rho = (lowMIP[ibin]+highMIP[ibin])/2;
      if (ibin==(NBIN-1))
	rho = 40;
    
      rho *= mip2gev;
      rho /= volume;
    }
  }

  return rho;
}

/*
float FindDensity(float hitEnergy){ //Only to use with LCWS-optimised weights
  float volume = 0.3*0.3*0.1;

  hitEnergy /= volume;

  float rho = 0;

  if (hitEnergy>0 && hitEnergy<=5)
    rho = 3.25;
  if (hitEnergy>5 && hitEnergy<=9)
    rho = 7;
  if (hitEnergy>9 && hitEnergy<=14)
    rho = 11.5;
  if (hitEnergy>14 && hitEnergy<=20)
    rho = 17;
  if (hitEnergy>20 && hitEnergy<=27)
    rho = 23.5;
  if (hitEnergy>27 && hitEnergy<=35)
    rho = 31;
  if (hitEnergy>35 && hitEnergy<=44)
    rho = 39.5;
  if (hitEnergy>44 && hitEnergy<=54)
    rho = 49;
  if (hitEnergy>54 && hitEnergy<=65)
    rho = 59.5;
  if (hitEnergy>65 && hitEnergy<=77)
    rho = 71;
  if (hitEnergy>77 && hitEnergy<=90)
    rho = 83.5;
  if (hitEnergy>90)
    rho = 97;

  return rho;
}
*/

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::clusterType(const pandora::CaloHitList &caloHitList, bool &isECalCluster, bool &isHCalCluster) const
{
    int nECalHits(0), nHCalHits(0);

    for(pandora::CaloHitList::const_iterator iter = caloHitList.begin() , endIter = caloHitList.end() ; endIter != iter ; ++iter)
    {
        const pandora::CaloHit *pCaloHit = *iter;

        if (HCAL == pCaloHit->GetHitType())
            nHCalHits++;

        else if (ECAL == pCaloHit->GetHitType())
            nECalHits++;

        //std::cout << "pCaloHit->GetHitType():   " << pCaloHit->GetHitType() << std::endl;
        //std::cout << "nECalHits:                " << nECalHits << std::endl;
        //std::cout << "nHCalHits:                " << nHCalHits << std::endl;
    }

    if (nECalHits != 0 && nHCalHits == 0)
        isECalCluster = true;

    else if (nHCalHits != 0 && nECalHits == 0)
        isHCalCluster = true;

    //std::cout << "nECalHits:    " << nECalHits << std::endl;
    //std::cout << "nHCalHits:    " << nHCalHits << std::endl;

    return STATUS_CODE_SUCCESS;
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::ECalClusterEnergyCorrectionFunction(const pandora::CaloHitList &caloHitList, float &energyCorrection) const
{
    //std::cout << "========ECAL CONTAINED CLUSTER========" << std::endl;

    for(pandora::CaloHitList::const_iterator iter = caloHitList.begin() , endIter = caloHitList.end() ; endIter != iter ; ++iter)
    {
        const pandora::CaloHit *pCaloHit = *iter;
        energyCorrection += pCaloHit->GetHadronicEnergy();
        //std::cout << "Calo Hit Energy: " << pCaloHit->GetInputEnergy() << std::endl;
    }

    //std::cout << "energyCorrection:   " << energyCorrection <<std::endl;

    return STATUS_CODE_SUCCESS;
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::SCClusterEnergyCorrectionFunction(float clusterEnergyEstimation, const pandora::CaloHitList &caloHitList, float &energyCorrection) const
{
    //std::cout << "========HCAL CONTAINED CLUSTER========" << std::endl;

    //std::cout << "m_SCEnergyConstants.at(0) : " << m_SCEnergyConstants.at(0) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(1) : " << m_SCEnergyConstants.at(1) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(2) : " << m_SCEnergyConstants.at(2) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(3) : " << m_SCEnergyConstants.at(3) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(4) : " << m_SCEnergyConstants.at(4) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(5) : " << m_SCEnergyConstants.at(5) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(6) : " << m_SCEnergyConstants.at(6) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(7) : " << m_SCEnergyConstants.at(7) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(8) : " << m_SCEnergyConstants.at(8) << std::endl;

  std::cout << "Energy correction for neutral hadron clusters: clusterEnergyEstimation " << clusterEnergyEstimation << std::endl;
  
  float E_SC(0.f);

  float p10 = m_SCEnergyConstants.at(0);
  float p11 = m_SCEnergyConstants.at(1);
  float p12 = m_SCEnergyConstants.at(2);

  float p20 = m_SCEnergyConstants.at(3);
  float p21 = m_SCEnergyConstants.at(4);
  float p22 = m_SCEnergyConstants.at(5);

  float p30 = m_SCEnergyConstants.at(6);
  float p31 = m_SCEnergyConstants.at(7);
  float p32 = m_SCEnergyConstants.at(8);

  float p1 = p10 + p11*clusterEnergyEstimation + p12*clusterEnergyEstimation*clusterEnergyEstimation;
  float p2 = p20 + p21*clusterEnergyEstimation + p22*clusterEnergyEstimation*clusterEnergyEstimation;
  float p3 = p30/(p31 + exp(p32*clusterEnergyEstimation));

  for(pandora::CaloHitList::const_iterator iter = caloHitList.begin() , endIter = caloHitList.end() ; endIter != iter ; ++iter)
    {
        const pandora::CaloHit *pCaloHit = *iter;
        std::cout << "Calo Hit Energy: " << pCaloHit->GetInputEnergy() << std::endl;
        std::cout << "Calo Hit Type:   " << pCaloHit->GetHitType() << std::endl;

	float hitEnergy = pCaloHit->GetHadronicEnergy();
	//float hitEnergy = pCaloHit->GetInputEnergy();
	
	std::cout << "hit hadronic energy " << hitEnergy << std::endl;

	float rho = FindDensity(hitEnergy);

	double weight = p1*exp(p2*rho) + p3;
	
	float hitEcorr = hitEnergy*weight;//here I have to use clusterEnergy estimation

	std::cout << "hitEcorr " << hitEcorr << std::endl;
	E_SC += hitEcorr;
    }

    energyCorrection = E_SC;

    std::cout << "energyCorrection:     " << energyCorrection <<std::endl;

    return STATUS_CODE_SUCCESS;
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::SCHCalECalSplitClusterEnergyCorrectionFunction(float clusterEnergyEstimation, const pandora::CaloHitList &caloHitList, float &energyCorrection) const
{

    //std::cout << "========SPLIT CLUSTER========" << std::endl;

    //std::cout << "m_SCEnergyConstants.at(0) : " << m_SCEnergyConstants.at(0) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(1) : " << m_SCEnergyConstants.at(1) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(2) : " << m_SCEnergyConstants.at(2) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(3) : " << m_SCEnergyConstants.at(3) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(4) : " << m_SCEnergyConstants.at(4) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(5) : " << m_SCEnergyConstants.at(5) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(6) : " << m_SCEnergyConstants.at(6) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(7) : " << m_SCEnergyConstants.at(7) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(8) : " << m_SCEnergyConstants.at(8) << std::endl;

  float E_SC(0.f);

  std::cout << "Energy correction for split clusters: clusterEnergyEstimation " << clusterEnergyEstimation << std::endl;

  float p10 = m_SCEnergyConstants.at(0);
  float p11 = m_SCEnergyConstants.at(1);
  float p12 = m_SCEnergyConstants.at(2);

  float p20 = m_SCEnergyConstants.at(3);
  float p21 = m_SCEnergyConstants.at(4);
  float p22 = m_SCEnergyConstants.at(5);

  float p30 = m_SCEnergyConstants.at(6);
  float p31 = m_SCEnergyConstants.at(7);
  float p32 = m_SCEnergyConstants.at(8);

  float p1 = p10 + p11*clusterEnergyEstimation + p12*clusterEnergyEstimation*clusterEnergyEstimation;
  float p2 = p20 + p21*clusterEnergyEstimation + p22*clusterEnergyEstimation*clusterEnergyEstimation;
  float p3 = p30/(p31 + exp(p32*clusterEnergyEstimation));

  for(pandora::CaloHitList::const_iterator iter = caloHitList.begin() , endIter = caloHitList.end() ; endIter != iter ; ++iter)
    {
      const pandora::CaloHit *pCaloHit = *iter;
      //std::cout << "Calo Hit Energy: " << pCaloHit->GetInputEnergy() << std::endl;
      //std::cout << "Calo Hit Type:   " << pCaloHit->GetHitType() << std::endl;

	//If HCAL: correct
        if (HCAL == pCaloHit->GetHitType())
        {
	  float hitEnergy = pCaloHit->GetHadronicEnergy();
	  //float hitEnergy_Had = pCaloHit->GetHadronicEnergy();
	  
	  //std::cout << "hit hadronic energy " << hitEnergy << std::endl;
	
	  float rho = FindDensity(hitEnergy);
	  
	  double weight = p1*exp(p2*rho) + p3;

	  //std::cout << "weigth " << weight << std::endl;
	  
	  float hitEcorr = hitEnergy*weight;//here I have to use clusterEnergy estimation
	  //std::cout << "hitEcorr " << hitEcorr << std::endl;
	  E_SC += hitEcorr;
        }	
        else
        {           
	  E_SC += pCaloHit->GetHadronicEnergy();
        }
    }

    energyCorrection = E_SC;

    //std::cout << "The corrected hadronic energy for a cluster of threshold hits:" << std::endl;
    //std::cout << "E_EM = " << E_EM << " E_HAD = " << E_HAD << " E_HAD_SC " << E_HAD_SC << std::endl;
    std::cout << "energyCorrection:     " << energyCorrection << std::endl;

    return STATUS_CODE_SUCCESS;
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode EnergyCorrectionSC::ReadSettings(const TiXmlHandle xmlHandle)
{
    PANDORA_RETURN_RESULT_IF(STATUS_CODE_SUCCESS, !=, XmlHelper::ReadVectorOfValues(xmlHandle,
        "SCEnergyConstants", m_SCEnergyConstants));

    //std::cout << "====== Read Settings =====" << std::endl;
    //std::cout << "m_SCEnergyConstants.at(0) : " << m_SCEnergyConstants.at(0) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(1) : " << m_SCEnergyConstants.at(1) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(2) : " << m_SCEnergyConstants.at(2) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(3) : " << m_SCEnergyConstants.at(3) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(4) : " << m_SCEnergyConstants.at(4) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(5) : " << m_SCEnergyConstants.at(5) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(6) : " << m_SCEnergyConstants.at(6) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(7) : " << m_SCEnergyConstants.at(7) << std::endl;
    //std::cout << "m_SCEnergyConstants.at(8) : " << m_SCEnergyConstants.at(8) << std::endl;

    return STATUS_CODE_SUCCESS;
}

//I =1; J = 2, K = 12
//I = 1; j = 15; k = 12

