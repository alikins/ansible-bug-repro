#!/bin/bash -x
make clean

git submodule update --recursive --init

source hacking/env-setup

# PYTHONPATH=./lib nosetests -v -d -s -d -w test/units -v playbook/test_role.py
# ansible localhost -m shell -a 'echo_argv ps -f name=consul' | grep unsupported

ANSIBLE_CONFIG=~/src/ansible/repro/mem_usage_a23_23579/ansible.cfg python2.7 ~/src/ansible/bin/ansible-playbook -vvv  -i ~/src/ansible/repro/mem_usage_a23_23579/hosts ~/src/ansible/repro/mem_usage_a23_23579/test_eats_mem.yml

exit $?
