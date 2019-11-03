# home-automation
Home automation repo
# RaspBerry PI
Download Raspbian image from https://www.raspberrypi.org/downloads/raspbian/
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
# GreenGrass
Follow guide at AWS to provision GreenGrass Core on Raspberry PI
https://docs.aws.amazon.com/greengrass/latest/developerguide/gg-gs.html
Install greengrassdk on core devices:
sudo pip3 install greengrasssdk

# Xioami temperature sensors
This section describes how to read temperatures from the sensors with Python. Will later on be run through Lambda
To read data from the Xioami temperature sensors. 
I will use ratcashdev mitemp libary - https://github.com/ratcashdev/mitemp
git clone https://github.com/ratcashdev/mitemp.git
git clone https://github.com/ChristianKuehnel/btlewrap.git btlewrap-git


