#!/bin/bash
ANSIBLE_CONFIG=ansible-with-gather-explicit.cfg ansible-playbook -vvv -i hosts test.yml
