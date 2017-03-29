. ./usr/local/staf/STAFEnv.sh
setsid /usr/local/staf/bin/STAFProc >/tmp/STAFProc.out 2>&1 &
sleep 30
ln -s /usr/local/ltp/pan/ltp-pan /usr/local/ltp/pan/pan
STAF local STAX execute file /usr/local/staf/xml/ltp.xml JOBNAME ltpstaf
STAF local STAX LIST jobs
STAF local stax list job 1 testcases
/bin/bash
