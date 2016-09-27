#!/bin/bash
ANSIBLE_CONFIG=ansible-with-gather-smart.cfg ansible-playbook -vvv -i hosts test.yml
