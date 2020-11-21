An ansible playbook to install openHAB on an Ubuntu box
===========================================================

Based on [lurhus](https://github.com/akafred/lurhus) by akafred

This setup uses [Ansible](http://docs.ansible.com) to automate provisioning of a linux machine
containing a full setup for [OpenHAB](http://www.openhab.org) 


## Bootstrap and prereqs

1. Install ansible:
    - Ubuntu:
        * `sudo apt-get install -y ansible`
2. Clone this repo from the command line (in a directory of your choice):
   ```git clone https://github.com/steintore/ansible_openhab.git```
3. `cd ansible_openhab` into your cloned repo.
4. From the command line run: 
    `ansible-playbook playbook.yml -i hosts --ask-vault-pass -vvvv --ask-sudo-pass` to install OpenHAB. 
    Note! The repository contains file(s) encrypted using `ansible-vault` - in such files there are secrets - like binding keys etc. Without the passphrase to the encrypted files you cannot start the system - in other words you need to replace the files with your own encrypted files with your secrets - or remove the functionality.

After you are up and running, open a browser and point it to [openHAB http://localhost:8080/openhab.app](http://localhost:8080/openhab.app).


## Operations

### Deploying changes
Run the ansible command again. It will download some things all over again. I'm currently using my own github repo for the configurations as well, so i can `git pull` in the configurations folder.