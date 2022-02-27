#!/bin/sh
# Uninstalls all Kernel helm charts 
## Usage: ./install.sh [kubeconfig]

if [ $# -ge 1 ] ; then
  export KUBECONFIG=$1
fi

NS=ida
while true; do
    read -p "Are you sure you want to delete ida helm chart?(Y/n) " yn
    if [ $yn = "Y" ]
      then
        helm -n $NS delete ida-keygen
        helm -n $NS delete ida-auth
        helm -n $NS delete ida-internal
        helm -n $NS delete ida-kyc
        helm -n $NS delete ida-otp
        break
      else
        break
    fi
done
