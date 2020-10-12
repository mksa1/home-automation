# PI bootstrap
This section covers bootstrapping the PI - i.e. how to make an new/reimaged PI into a working working polling engine

## Image process
* Find a laptop with a SD card reader/writer and use RaspBerry PI Imager to write the newest lite image
https://www.raspberrypi.org/blog/raspberry-pi-imager-imaging-utility/
* Use this guide for headless wireless setup https://www.raspberrypi.org/documentation/configuration/wireless/headless.md
* Also consider remote access https://www.raspberrypi.org/documentation/remote-access/README.md

## Git setup af first boot
Connect to the PI through SSH. Default username is pi and password is "raspberry"
1. Change pi user password
2. Install git - aptitude install git
3. Setup git with remote repository
   1. git remote add origin https://github.com/mksa1981/home-automation.git
   2. Using ssh requires setup of ssh keys. Otherwise use HTTPS with username/password login
   3. Clone remote respoistory - git clone --bare https://github.com/mksa1981/home-automation.git
 
