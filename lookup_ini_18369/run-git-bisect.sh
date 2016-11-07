#!/bin/bash

git bisect start HEAD v2.1.0.0-1

# assumes https://github.com/alikins/ansible-bug-repro/ is checkout out into anisble src dir
# ie, ansible/    # https://github.com/ansible/ansible checkout
#     ansible/repro  # https://github.com/alikins/ansible-bug-repro/ checkout
git bisect run repro/lookup_ini_18369/bisect-tester.sh repro/lookup_ini_18369/test.yml
