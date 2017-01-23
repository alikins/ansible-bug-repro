#!/bin/bash

ansible-playbook -i hosts -vvv --ask-vault-pass test.yml
