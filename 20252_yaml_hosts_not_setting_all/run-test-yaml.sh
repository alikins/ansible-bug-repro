#!/bin/bash
echo "Running ansible ad hoc with hosts.yaml"
ansible localhost -i hosts.yml -m debug -a var=groups.all -vvvv

echo "Running ansible-playbook with hosts.yaml"
ansible-playbook -vvv -i hosts.yml test.yml
