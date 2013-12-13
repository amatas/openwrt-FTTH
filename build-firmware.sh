#!/bin/bash
#
# Author: Alfredo Matas (http://www.alfredomatas.es)
# License: http://www.gnu.org/licenses/gpl.html GPL version 2 or higher
#

git clone git://git.openwrt.org/12.09/openwrt.git openwrt.git
pushd openwrt.git
cp ../config-Movistar-ar71xx-TL-WR1043ND .config
cp ../z-movistar target/linux/ar71xx/base-files/etc/uci-defaults/z-movistar
chmod +x target/linux/ar71xx/base-files/etc/uci-defaults/z-movistar
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
cp ../config-Movistar-ar71xx-TL-WR1043ND .config
# the number of jobs can be changed with the number of cpus + 1
#
# Sometimes this step fails because de concurrency of some jobs,
# relaunching this command usually solves the problem.
make -j5
popd

