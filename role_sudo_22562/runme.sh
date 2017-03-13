#!/bin/bash -x
# removing existing go role
rm -rf roles_external/*

echo "installing ansible roles via galaxy from requirements.yml"
ansible-galaxy -vv install -r requirements.yml -p roles_external/

echo "showing roles_external/go/"
ls -laR roles_external/

echo "running ansible-playbook"
ansible-playbook -vvv foo-playbook.yml
