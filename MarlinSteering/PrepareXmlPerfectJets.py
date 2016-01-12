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

slcioPath = '/r04/lc/sg568/HCAL_Optimisation_Studies/Slcio/GJN38/'
slcioFormat = 'ILD_o1_v06_GJN38_uds(.*?)_(.*?).slcio' # ILD_o1_v06_GJN38_uds91_01_100.slcio

#===========================

baseFile = os.path.join(os.getcwd(), 'MarlinSteeringFileTemplate.xml')
baseFileName = 'MarlinSteeringFileTemplate.xml'

currentDirectory = os.getcwd()
oneUpDirectory = os.path.dirname(currentDirectory)

marlinPath = os.path.join(oneUpDirectory,'MarlinXml')
rootFilePath = os.path.join(oneUpDirectory,'RootFiles')

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
            junk = matchObj.group(2)

            print str(nextFile)
            
            if int(energy) not in [91,200,360,500]:
                #print 'bad slcio file : ' + str(nextFile)
                continue

            # Marlin Xml and Root File Name
            newFileName = 'Marlin_ILD_o1_v06_Zuds_' + str(energy) + 'GeV_' + str(junk) + '_PerfectPFA.xml'
            marlinFullPath = os.path.join(marlinPath, newFileName)
            rootFileFullPath = os.path.join(rootFilePath, 'PFOAnalysis_PandoraSettingsPerfectPFA_ILD_o1_v06_Zuds_' + str(energy) + 'GeV_' + str(junk) + '.root')

            newContent = re.sub('PFOANALYSISDEFAULTROOTFILE_XXXX',rootFileFullPath,newContent)

            # Pandora Settings Files
            basePandoraSettingsFile = 'PandoraSettingsPerfectPFA.xml'
            base2 = open(basePandoraSettingsFile,'r')
            baseContent2 = base2.read()
            base2.close()

            rootFileFullPathCellEnergyAlgorithm = os.path.join(rootFilePath, 'CellEnergyAlgorithm_PandoraSettingsPerfectPFA_ILD_o1_v06_Zuds_' + str(energy) + 'GeV_' + str(junk) + '.root')

            newContent2 = baseContent2
            newContent2 = re.sub('CELLENERGYALGORITHMROOTFILE_XXXX',rootFileFullPathCellEnergyAlgorithm,newContent2)
            pandoraSettingsFile = os.path.join(oneUpDirectory,'PandoraSettings/PandoraSettingsPerfectPFA_Zuds_' + str(energy) + 'GeV_' + str(junk) + '.xml')
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
file = open(runFilePath + '/MarlinRunFileJetsPerfect.txt','w')
file.write(jobList)
file.close()
