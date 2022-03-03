# -------------------------------------------------------------------------------
# Script to launch the forge minecraft server on reboot 
#
# Copyright (C) 2021 Ashish Jaiswal, https://mechash.com.
# All rights reserved.
#
# This file is part of https://github.com/mechash/RPi_Stats_Monitor_SH1106.git,
# and is released under the "MIT License Agreement". Please see the LICENSE file
# that should have been included as part of this package.
# -------------------------------------------------------------------------------
#!/bin/bash
clear
cd FTB-Revelation-RPi-Server/
sleep 5
java -Xms2G -Xmx3G -jar forge-1.12.2-14.23.5.2860.jar nogui
