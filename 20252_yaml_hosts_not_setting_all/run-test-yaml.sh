#!/bin/bash
ansible localhost -i hosts.yml -m debug -a var=groups.all -vvvv
