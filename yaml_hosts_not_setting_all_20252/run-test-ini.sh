#!/bin/bash
echo "Running ansible ad hoc with hosts.ini"
ansible localhost -i hosts.ini -m debug -a var=groups.all -vvvv

echo "Running ansible-playbook with hosts.ini"
ansible-playbook -vvv -i hosts.ini test.yml
