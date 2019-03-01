#!/bin/bash
set -x

if [[ ! "${2}" ]]; then
    echo "Usage: ${0} identifier host_type" 1>&2
    exit 2
fi

IDENTIFIER=$1
HOST_TYPE=$2

export TF_STATE=~/.stingar_deployment/${IDENTIFIER}/aws/terraform.tfstate

HOST=$(terraform-inventory --list | \
    jq ".stingar_type_${HOST_TYPE}_server | first" -r)

ssh -i "$HOME/.stingar_deployment/${IDENTIFIER}/credentials/id_rsa" \
    -p 4222 \
    root@"${HOST}"
