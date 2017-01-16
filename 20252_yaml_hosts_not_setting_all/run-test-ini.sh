#!/bin/bash
ansible localhost -i hosts.ini -m debug -a var=groups.all -vvvv
