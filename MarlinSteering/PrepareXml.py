# -*- coding: utf-8 -*-
import os
import re
import random
import dircache
import sys

def find_between( s, first, last ):
    try:
        start = s.index( first ) + len( first )
        end = s.index( last, start )
        return s[start:end]
    except ValueError:
        return ''


#===========================
# Input Variables
#===========================

#print sys.argv

slcioPath = '/r06/lc/sg568/DESYCollaboration/SlcioFiles/'
slcioFormat = 'ILD_o1_v06_(.*?)_GeV_Energy_(.*?)_pdg_(.*?).slcio' # ILD_o1_v06_0.5_GeV_Energy_-211_pdg_0_1000_0.slcio

#===========================

baseFile = os.path.join(os.getcwd(), 'MarlinSteeringFileTemplate.xml')
baseFileName = 'MarlinSteeringFileTemplate.xml'
marlinPath = os.getcwd() + '/../MarlinXml'
rootFilePath = os.getcwd() + '/../RootFiles'

jobList = ''

base = open(baseFile,'r')
baseContent = base.read()
base.close()

fileDirectory = slcioPath
allFilesInDirectory = dircache.listdir(fileDirectory)
inputFileExt = 'slcio'

allFiles = []
allFiles.extend(allFilesInDirectory)
allFiles[:] = [ item for item in allFiles if re.match('.*\.'+inputFileExt+'$',item.lower()) ]
allFiles.sort()

if allFiles:
    array_size=len(allFiles)
    
    for nfiles in range (array_size):
        newContent = baseContent
        nextFile = allFiles.pop(0)
        matchObj = re.match(slcioFormat, nextFile, re.M|re.I)
        
        if matchObj:
            energy = matchObj.group(1)
            pdg = matchObj.group(2)
            junk = matchObj.group(3)
            
            # Marlin Xml and Root File Name
            newFileName = 'Marlin_ILD_o1_v06_' + str(pdg) + '_pdg_' + str(energy) + 'GeV_' + str(junk) + '.xml'
            marlinFullPath = os.path.join(marlinPath, newFileName)
            rootFileFullPath = os.path.join(rootFilePath, 'PFOAnalysis_PandoraSettingsDefault_ILD_o1_v06_' + str(pdg) + '_pdg_' + str(energy) + 'GeV_' + str(junk) + '.root')

            newContent = re.sub('PFOANALYSISDEFAULTROOTFILE_XXXX',rootFileFullPath,newContent)

            # Pandora Settings Files
            basePandoraSettingsFile = 'PandoraSettingsDefault.xml'
            base2 = open(basePandoraSettingsFile,'r')
            baseContent2 = base2.read()
            base2.close()

            rootFileFullPathCellEnergyAlgorithm = os.path.join(rootFilePath, 'CellEnergyAlgorithm_PandoraSettingsDefault_ILD_o1_v06_' + str(pdg) + '_pdg_' + str(energy) + 'GeV_' + str(junk) + '.root')

            newContent2 = baseContent2
            newContent2 = re.sub('CELLENERGYALGORITHMROOTFILE_XXXX',rootFileFullPathCellEnergyAlgorithm,newContent2)
            pandoraSettingsFile = os.getcwd() + '/../PandoraSettings/PandoraSettingsDefault_' + str(pdg) + '_pdg_' + str(energy) + 'GeV_' + str(junk) + '.xml'
            file = open(pandoraSettingsFile,'w')
            file.write(newContent2)
            file.close()

            newContent = re.sub('PANDORASETTINGSDEFAULT_XXXX',pandoraSettingsFile,newContent)
            # Slcio File
            newContent = re.sub('SLCIO_FILE_XXXX',slcioPath + nextFile,newContent)

            file = open(marlinFullPath,'w')
            file.write(newContent)
            file.close()
            
            jobList += marlinFullPath
            jobList += '\n'
            del newContent

runFilePath = os.getcwd() 
file = open(runFilePath + '/MarlinRunFile.txt','w')
file.write(jobList)
file.close()
