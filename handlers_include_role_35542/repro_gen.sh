#!/bin/bash
#tmp=$(mktemp -d)
#cd "${tmp}"
tee ansible.cfg <<EOF
[defaults]
nocows = 1
force_handlers = True
EOF
mkdir -p roles/role_{import,include{,_works}}/{tasks,handlers}
tee roles/role_{import,include}/handlers/main.yml <<EOF
---
- name: "my handler"
  debug: msg="running handler in {{role_name}}"
EOF
tee roles/role_{import,include{,_works}}/tasks/main.yml <<EOF
---
- name: "do something"
  command: /bin/true
  notify: my handler
EOF
tee roles/role_include_works/handlers/main.yml <<EOF
---
- name: "my handler"
  listen: ['my handler']
  debug: msg="running handler in {{role_name}}"
EOF
tee run.yml <<EOF
---
- hosts: localhost
  gather_facts: no
  tasks:
    - import_role: name=role_import
    - include_role: name=role_include
    - include_role: name=role_include_works
EOF
ansible-playbook run.yml
