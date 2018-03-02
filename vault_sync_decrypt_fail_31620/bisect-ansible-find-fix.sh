#!/bin/bash -x

# we need to flip the return status here and return '0' on 'broken' / 'old'
# and 1 on 'fixed' or 'new'
ansible-playbook -v -i repro/vault_sync_decrypt_fail_31620/hosts repro/vault_sync_decrypt_fail_31620/test.yml
RC=$?
if [ $RC -eq 0 ]; then
    exit 1
fi
exit 0



