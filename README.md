# Optimised Minecraft Modpack for Raspberry Pi Server 


These instructions will guide you through the process of creating a modded Java Edition Minecraft Server on a RaspberryPi 3|4. 
I've put together a ModPack for this project that you may use for optimal gameplay while not overloading your little RaspberryPi Server. 
The modding scenario is entirely in the Java edition, and to connect to this server, you must be running Minecraft Java on a PC (Windows, Linux, or Mac).

Finally, these instructions are for Minecraft version 1.12.2. When it comes to mods, the version is everything, 
so make sure you get the correct version installed on both the client and server sides. If you want to add new mods to the server, follow the methods outlined here.
Because the regular Minecraft Java server is unable to execute the mods, we will need to download and install the appropriate version of Forge, which I will discuss later.


## Requirements

1. Desktop with Windows 10 / MAC
2. RaspberryPi 3/4 4GB+ 
3. Raspberry Pi OS Lite/Desktop 64-bit 
4. java development kit 8u321
5. Forge installer for server 
6. Curse Forge for client

> Disclaimer : 
> - This server was tested on RPi 4B 4GB, if you are planning to host more than 8 players on the server use 8GB varient for best performance. Raspberry Pi with 2GB is not recommended
> 
> - You wont be able to install jdk-8 on a 32-bit OS so make sure you are downloading and insalling Raspberry Pi OS 64-bit Desktop/Light version on Raspberry Pi


## Installation

Manually installing each and every componed saverately will be a very leanthy and complicated process.
To make it easiear to install the java enviroment, forge and the modpack using this repositoary on the server end I have stated the steps in this file [Server-End-Installation.md](/Server-End-Installation.md)

Once you have conpleated the installation on minecraft server on Raspberry Pi you have to install the same modpack on the client end. So that you and your friends can connect to the server and play minecraf. The steps for installing this modpack is stated in this file [Client-End-Installation.md](/Client-End-Installation.md) 

## Usage



## Credits


## Contributing

Requests for pulls are always welcome!

Please raise an issue first to discuss the problem and what you'd like to modify.

Give a ⭐️ if you like this project!

