#!/bin/bash
ansible --version
USER='adrian'
ansible -i hosts all -m shell -a "sudo journalctl --since \"5 days ago\" --until \"4 days ago\" | grep a-unexpected-string-that-should-miss-${RANDOM}-${RANDOM}-${RANDOM} || :" -u "${USER}" -vvvv
#ansible -i hosts all -m shell -a 'sudo journalctl --since "24 hours ago" | grep -i adrian' -u "${USER}" -vvvv
