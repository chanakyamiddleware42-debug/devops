-  name:  jaffa servr
   hosts: all
   tasks:
     -  name: jaffa pinged all
        ansible.builtin.ping:
- name: print
  hosts: all
  tasks:
   - name: chani
     ansible.builtin.debug:
       support: "chani full name is chanakya"

- name: install webserver
  hosts: all
  become: yes
  tasks:
  - name: install nginx
    ansible.builtin.package:
      name: nginx
      state: present

  - name: nginx start
    ansible.builtin.package:
      name: start nginx
      state: started
      enabled: yes



- name: play variables
  hosts: local
  connection: local
  vars:
    CORE: "Devops with AWS"
    DURATION: "140"
    TRAINER: "sivakumar reddy"
  tasks:
  - name: print vars
    ansible.builtin.debug:
      msg: "core is: {{ CORE }}, trainer was {{ TRAINER }}"
- name: play variables
  hosts: local
  connection: local
  vars:
    CORE: "Devops with AWS"
    DURATION: "140"
    TRAINER: "sivakumar reddy"
  tasks:
  - name: print vars
    vars:
      CORE: "ansible"
    ansible.builtin.debug:
      msg: "core is: {{ CORE }}, trainer was {{ TRAINER }}"

- name: play variables
  hosts: local
  connection: local
  vars_files:
  - core.yaml
  tasks:
  - name: print vars
    ansible.builtin.debug:
      msg: "core is: {{ CORE }}, trainer was {{ TRAINER }}"

CORE: "Devops with AWS"
DURATION: "140"
TRAINER: "sivakumar reddy"
- name: promot
  hosts: local
  connection: local
  vars_prompt:
    - name: user
      prompt:  your username?
      private: false

    - name: pasrd
      prompt: your password?
  tasks:
    - name: print
      ansible.builtin.debug:
        msg: "username is {{ user }}, password is {{ pasrd }}"
- name: play variables
  hosts: local
  connection: local
  tasks:
  - name: print vars
    ansible.builtin.debug:
      msg: "core is: {{ CORE }}"

