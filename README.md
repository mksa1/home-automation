# home-automation
Home automation repo

# Hardware
- Raspberry PI3+
- Raspberry Zero
- Old laptop with Ubuntu and VirtualBox. Used to host OpenHAB. Backup VMs to Amazon S3
- Power switches ???
- Xioami temperature and humidity sensors. https://www.raspberrypi.org/products/raspberry-pi-3-model-b/

# RaspBerry PI
Use Raspberry Imager - https://www.raspberrypi.org/blog/raspberry-pi-imager-imaging-utility/
TODO: Look at autoprovision and configuration
Update to latest: 
sudo apt-get update -y
Install git:
sudo apt-get install git -y
Install Python 3:
sudo apt-get install python3 -y
Install bluepy - https://github.com/IanHarvey/bluepy
sudo apt-get install python3-pip libglib2.0-dev -y
sudo pip3 install bluepy

# Xioami temperature sensors
This section describes how to read temperatures from the sensors with Python. Will later on be run through Lambda
To read data from the Xioami temperature sensors. 
I will use ratcashdev mitemp libary - https://github.com/ratcashdev/mitemp
git clone https://github.com/ratcashdev/mitemp.git
git clone https://github.com/ChristianKuehnel/btlewrap.git btlewrap-git

# OpenHAB
VirtualBox installation steps:
1. Create new VirtualBox VM. 1G RAM and 50G disk 
2. Attach Ubuntu LTS image (ex. 20.04)
    * Download from https://releases.ubuntu.com/20.04/
3. Complete minimal OS install (default settings)
    * Do not select additional packages on top of the base OS. All packages will be installed using Ansible
4. Install VirtualBox Guest Extensions
    * WRITEME

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



My installation is based on VirtualBox, but any server will do.
This section describes the OpenHAB setup. Also see https://www.openhab.org/




