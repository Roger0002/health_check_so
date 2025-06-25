teste_nsswitch
=========

Essa role testa se a string sss consta nas linhas passwd e group do arquivo /etc/nsswitch.conf, retornando a variável teste_nsswitch com o valor OK ou FAIL, dependendo do teste

Example Playbook
----------------

    - hosts: servers
      tasks:
        - ansible.builtin.include_role:
            name: teste_nsswitch
