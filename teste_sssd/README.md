teste_sssd
=========

Essa role testa se o daemon do sssd está no ar e habilitado para subir no boot, retornando a variável teste_sssd com o valor OK ou FAIL, dependendo do teste


Example Playbook
----------------

    - hosts: servers
      tasks:
        - ansible.builtin.include_role:
            name: teste_nsswitch
