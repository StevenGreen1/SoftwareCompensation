/**
 *  @file   MarlinPandora/src/CellEnergyAlgorithm.cc
 * 
 *  @brief  Implementation of the cell energy algorithm class.
 * 
 *  $Log: $
 */

#include "Pandora/AlgorithmHeaders.h"

#include "CellEnergyAlgorithm.h"

using namespace pandora;

//------------------------------------------------------------------------------------------------------------------------------------------

CellEnergyAlgorithm::CellEnergyAlgorithm() :
    m_RootFileName("Test.root")
{
}

//------------------------------------------------------------------------------------------------------------------------------------------

CellEnergyAlgorithm::~CellEnergyAlgorithm()
{   
    std::cout << "Exiting Cell Energy Algorithm and saving root file : " << m_RootFileName << std::endl;
    PANDORA_MONITORING_API(SaveTree(this->GetPandora(), "ClusterEnergyTree", m_RootFileName, "UPDATE"));
    //PandoraMonitoringApi::SaveTree(this->GetPandora(), )
}

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode CellEnergyAlgorithm::Run()
{
    std::cout << "===== Running Cell Energy Algorithm =====" << std::endl;

    // Algorithm code here
    const pandora::PfoList *pPfoList = NULL;
    PANDORA_RETURN_RESULT_IF(STATUS_CODE_SUCCESS, !=, PandoraContentApi::GetCurrentList(*this, pPfoList));

    std::vector<float> pfoMomentum;
    std::vector<float> pfoCosTheta;

    for (pandora::PfoList::const_iterator pfoIter = pPfoList->begin(), pfoIterEnd = pPfoList->end(); pfoIter != pfoIterEnd; ++pfoIter)
    {
        const pandora::Pfo *const pPfo = *pfoIter;
        const CartesianVector cartesianVector = pPfo->GetMomentum();
        const float px = cartesianVector.GetX();
        const float py = cartesianVector.GetY();
        const float pz = cartesianVector.GetZ();
        std::cout << px << " " << py << " " << pz << std::endl; 
        const float momentum(std::sqrt(px * px + py * py + pz * pz));
        const float cosTheta((momentum > std::numeric_limits<float>::epsilon()) ? pz / momentum : -999.f);
        pfoMomentum.push_back(momentum);
        pfoCosTheta.push_back(cosTheta);
    }

    int numberOfPfos(pPfoList->size());

    const pandora::ClusterList *pCurrentClusterList = NULL;
    PANDORA_RETURN_RESULT_IF(STATUS_CODE_SUCCESS, !=, PandoraContentApi::GetCurrentList(*this, pCurrentClusterList));

    std::vector<int> numberOfHitsInCluster;
    std::vector<float> rawEnergyOfCluster;
    std::vector<float> correctedEnergyOfCluster;

    for (pandora::ClusterList::const_iterator clusterIter = pCurrentClusterList->begin(), clusterIterEnd = pCurrentClusterList->end(); clusterIter != clusterIterEnd; ++clusterIter)
    {
        const Cluster *const pCluster = *clusterIter;
        const bool isEMShower(PandoraContentApi::GetPlugins(*this)->GetParticleId()->IsEmShower(pCluster));

        if (!isEMShower)
        {
            std::cout << "Number of hits in cluster : " << pCluster->GetNCaloHits() << std::endl;
            numberOfHitsInCluster.push_back(pCluster->GetNCaloHits());
            rawEnergyOfCluster.push_back(pCluster->GetHadronicEnergy());
            correctedEnergyOfCluster.push_back(pCluster->GetCorrectedHadronicEnergy(this->GetPandora()));
        }
        else
        {
            continue;
        }
    }

    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "RawEnergyOfCluster", &rawEnergyOfCluster));
    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "CorrectedEnergyOfCluster", &correctedEnergyOfCluster));
    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "NumberOfHitsInCluster", &numberOfHitsInCluster));
    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "NumberOfPFOsInEvent", numberOfPfos));
    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "PFOMomentum", &pfoMomentum));
    PANDORA_MONITORING_API(SetTreeVariable(this->GetPandora(), "ClusterEnergyTree", "PFOCosTheta", &pfoCosTheta));
    PANDORA_MONITORING_API(FillTree(this->GetPandora(), "ClusterEnergyTree"));

   return STATUS_CODE_SUCCESS;
}

//------------------------------------------------------------------------------------------------------------------------------------------

/*StatusCode CellEnergyAlgorithm::Display(const CaloHitList &fullCaloHitList, const CaloHitList &hotCaloHitList) const
{
    std::string detectorView = "default";
    PandoraMonitoringApi::SetEveDisplayParameters(this->GetPandora(), true, (detectorView.find("xz") != std::string::npos) ? DETECTOR_VIEW_XZ : (detectorView.find("xy") != std::string::npos) ? DETECTOR_VIEW_XY : DETECTOR_VIEW_DEFAULT, -1.f, 1.f);

//    PandoraMonitoringApi::VisualizeParticleFlowObjects(this->GetPandora(), pPfoList, "AllPFOs", BLACK, true, true);

    PandoraMonitoringApi::VisualizeCaloHits(this->GetPandora(), &fullCaloHitList, "AllCaloHits", GREEN);
    PandoraMonitoringApi::VisualizeCaloHits(this->GetPandora(), &hotCaloHitList, "HotCaloHits", RED);
    PandoraMonitoringApi::ViewEvent(this->GetPandora());

    return STATUS_CODE_SUCCESS;
}*/

//------------------------------------------------------------------------------------------------------------------------------------------

StatusCode CellEnergyAlgorithm::ReadSettings(const TiXmlHandle xmlHandle)
{
    // Read settings from xml file here

//    PANDORA_RETURN_RESULT_IF(STATUS_CODE_SUCCESS, !=, XmlHelper::ReadValue(xmlHandle, "HotHadCellEnergy", m_HotHadCellEnergy));

    PANDORA_RETURN_RESULT_IF(STATUS_CODE_SUCCESS, !=, XmlHelper::ReadValue(xmlHandle, "RootFileName", m_RootFileName));

    return STATUS_CODE_SUCCESS;
}
