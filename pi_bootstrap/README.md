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
This section describes the OpenHAB setup. Also see https://www.openhab.org/


