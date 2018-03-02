#!/bin/bash

# This needs to be run from the ansible git checkout (not the repro dir,
# despite it living there)

git checkout devel

# flip the terms so we bisect inverse/backwards/flipflopped/orthonally
git bisect start --term-old broken --term-new fixed

# devel is 'fixed' and we are in tip of devel
git bisect fixed

# but it's known busted in stable-2.4. means we will bisect across a merge
# base but thats okay.
git bisect broken stable-2.4

# also need to copy bisect-ansible-find-fix.sh to root of ansible git repo
# also despite living in the repro dir
git bisect run ./bisect-ansible-find-fix.sh

