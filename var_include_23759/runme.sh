#!/bin/bash

ansible-playbook -vvvvv -i localhost, site.yml -e region=us-east-1 -e global_region=us-west-2
