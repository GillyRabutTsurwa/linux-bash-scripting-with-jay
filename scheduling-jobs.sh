#!/bin/bash

logfile=job_results.log

echo "The script ran at the following time: $(date)" > $logfile;

# use atq to see queue of schedule jobs
# use atrm {jobId) to remove job
