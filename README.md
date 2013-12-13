OpenWRT for FTTH
================

This repository has a build script and the required files to build an OpenWRT 
firmware compatible with Movistar FTTH (for Spain). With this firmware you can
change the provider router and use a TP-Link TL-WR1043ND or Linksys WRT160NL.

How to build
------------

First of all you need a Linux distribution with development packages. For 
example, in a Debian based distribution you can ejecute:

        apt-get install git build-essential

Then you will have to execute the build-firmware.sh:

        sh build-firmware.sh

This will clone the OpenWRT repository and apply some changes. The config is 
set for TP-Link WR1043ND, if you want to build for Linksys WRT160NL you will 
have to change the target platform using the comand **make menuconfig** before 
**make -j8**.

Once the build has complete, you will find the new firmware in the 
**bin/ar71xx/** directory.

Credits
-------

* http://foro.seguridadwireless.net/openwrt/%28tutorial%29-movistar-ftth-con-openwrt/
* http://wiki.openwrt.org/doc/howto/build
* http://www.alfredomatas.es
