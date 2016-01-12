#!/bin/bash

echo "STARTING CONDOR SUPERVISOR";

if [ $1 ]; then
    #myrunlist=$1
    # If this is included the runlist will not be deleted as it is processed.
    myrunlistPre=$1
    myrunlist="/tmp/jobs.${myrunlistPre}.tmp"
    rm -f ${myrunlist}
    cp ${myrunlistPre} ${myrunlist}
    
else
    echo "Not given a runlist! exiting"
    exit 0;
fi

if [ $2 ]; then
    maxRuns=$2
else
    maxRuns=10
fi

JOBNAME='Mokka_HCS' #mokka

echo "Supervisor will allow no more than $maxRuns jobs to be queued at any time."
nRun=0
nRun=`wc -l < $myrunlist | sed 's/ //g'`

if [ $nRun -le 0 ]; then
    echo "$myrunlist is empty. Exiting..."
    exit 0;
else
    echo "There are still $nRun jobs to be submitted"

    while  [ $nRun -gt 0 ]
    do
        njobs=`condor_q | grep "${JOBNAME}" | wc -l | sed 's/ //g'`		
		
        if [ $njobs -lt $maxRuns ]; then
            rm -f temp_HCS.job
            touch temp_HCS.job
            echo "executable              = Mokka_HCS.sh                                                    " >> temp_HCS.job 
            echo "initial_dir             = ${PWD}                                                          " >> temp_HCS.job
            echo "notification            = never                                                           " >> temp_HCS.job
            echo "Requirements            = (LoadAvg < 0.5) && (POOL == \"GENERAL\") && (OSTYPE == \"SLC6\")" >> temp_HCS.job
            echo "Rank                    = memory                                                          " >> temp_HCS.job
            echo "output                  = \$ENV(HOME)/CondorLogs/${JOBNAME}.out.\$(Process)               " >> temp_HCS.job
            echo "error                   = \$ENV(HOME)/CondorLogs/${JOBNAME}.err.\$(Process)               " >> temp_HCS.job
            echo "log                     = \$ENV(HOME)/CondorLogs/${JOBNAME}.log.\$(Process)               " >> temp_HCS.job
            echo "environment             = CONDOR_JOB=true                                                 " >> temp_HCS.job
            echo "Universe                = vanilla                                                         " >> temp_HCS.job
            echo "getenv                  = false                                                           " >> temp_HCS.job
            echo "copy_to_spool           = true                                                            " >> temp_HCS.job
            echo "should_transfer_files   = yes                                                             " >> temp_HCS.job
            echo "when_to_transfer_output = on_exit_or_evict                                                " >> temp_HCS.job
        
            tmpfilename="/tmp/job.$$.tmp"
            thisjob=0
            n=0
            rm -f ${tmpfilename};
            touch $tmpfilename
            cat $myrunlist | while read line
            do
               if [ $n -eq 0 ]; then
                    echo "arguments = "${line}                                                     >> temp_HCS.job
               else
                    echo $line >> $tmpfilename;
               fi
                    let "n++"
            done
            cp ${tmpfilename} ${myrunlist}
            rm ${tmpfilename}
            echo "queue 1"                                                                         >> temp_HCS.job
            echo "submitted another job as there were only $njobs jobs in the queue and $nRun jobs left to be submitted"

            condor_submit temp_HCS.job
            usleep 500000
            nRun=`wc -l < $myrunlist | sed 's/ //g'`
            rm -f temp_HCS.job
        else
            usleep 500000
        fi
    done
fi
echo "$myrunlist is empty. Exiting..."
exit 0;
