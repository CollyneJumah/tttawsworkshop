<!-- 
    Test stress script to simulate hits on instance. The test stress will run a workload generator tool stress designed to subject a system to a configurable measures.

    We configure stress to spawn 1 worker with a timeput of 300000000 microseconds or 5 mins for 30 minutes.
 -->

#!/bin/sh 
yum -y update
amazon-linux-extras install epel -y
yum install stress -y
stress -c 1 --backoff 300000000 -t 30m