#!/bin/sh
# Uninstalls all Reg Proc helm charts
## Usage: ./install.sh [kubeconfig]

if [ $# -ge 1 ] ; then
  export KUBECONFIG=$1
fi
NS=regproc
while true; do
    read -p "Are you sure you want to delete regproc helm chart?(Y/n) " yn
    if [ $yn = "Y" ]
      then
        helm -n $NS delete regproc-status 
        helm -n $NS delete regproc-camel 
        helm -n $NS delete regproc-receiver 
        helm -n $NS delete regproc-pktserver 
        helm -n $NS delete regproc-uploader 
        helm -n $NS delete regproc-validator 
        helm -n $NS delete regproc-quality 
        helm -n $NS delete regproc-osi 
        helm -n $NS delete regproc-demo 
        helm -n $NS delete regproc-biodedupe 
        helm -n $NS delete regproc-abishandler 
        helm -n $NS delete regproc-abismid 
        helm -n $NS delete regproc-manual 
        helm -n $NS delete regproc-bioauth 
        helm -n $NS delete regproc-eis 
        helm -n $NS delete regproc-external 
        helm -n $NS delete regproc-msg 
        helm -n $NS delete regproc-print 
        helm -n $NS delete regproc-reprocess 
        helm -n $NS delete regproc-trans 
        helm -n $NS delete regproc-uin 
        break
      else
        break
    fi
done
