#!/bin/bash
repo init -u https://github.com/jakob-lind/boot2qt-imx8mm-manifest.git -m v5.15.1.xml
repo sync
source setup-environment.sh
touch conf/sanity.conf
bitbake b2qt-embedded-qt5-image
