#!/bin/bash
ansible-playbook "${1}" > /dev/null 2>&1
rc=$?

if [[ "${rc}" -ne "0" ]] ; then
    exit 1
fi
