An ansible playbook to install openHAB on an Ubuntu box
===========================================================

Based on [lurhus](https://github.com/akafred/lurhus) by akafred
Based on xxx

This setup uses [Ansible](http://docs.ansible.com) to automate provisioning of a linux machine together with [Vagrant](https://www.vagrantup.com/)
containing a full setup for [HomeAssistant](https://www.home-assistant.io/) 


## Bootstrap and prereqs

1. Prerequisits:
    - VirtualBox:
        * `sudo apt-get install -y virtualbox`
    - Ansible
        * `sudo apt-get install -y ansible`
    - NFS
        * `sudo apt-get install .y nfs-server`
2. Clone this repo from the command line (in a directory of your choice):
   ```git clone https://github.com/mksa1981/home-automation.git```
3. `cd home-automation/home-assistant` into your cloned repo.
4. From the command line run: 
    `vagrant up` to install Home Assistant. 

    Note! The repository contains file(s) encrypted using `ansible-vault` - in such files there are secrets - like binding keys etc. Without the passphrase to the encrypted files you cannot start the system - in other words you need to replace the files with your own encrypted files with your secrets - or remove the functionality.

After you are up and running, open a browser and point it to [openHAB https://localhost:8443/](https://localhost:8443/).


## Operations

### Deploying changes
Run the ansible command again. It will download some things all over again. I'm currently using my own github repo for the configurations as well, so i can `git pull` in the configurations folder.