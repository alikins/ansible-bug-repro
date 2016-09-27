#!/usr/bin/python

def main():
   module = AnsibleModule(
      argument_spec = dict()
   )

   dictio={ 'test': 'success' }
   module.exit_json(changed=False, ansible_facts=dictio)

from ansible.module_utils.basic import AnsibleModule
if __name__ == '__main__':
    main()
