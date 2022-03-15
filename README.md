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

If you want to start the server on each reboot please follow the instruction in the [Server-End-Installation.md](/Server-End-Installation.md)

To start the server manually you can follow the steps mentioned bellow :

```md
   java -Xms512M -Xmx3000M -jar forge-1.12.2-14.23.5.2860.jar nogui
```

> If you want to allocate all the available memory to the server you can do soo by changing the values in the `-Xms` and `-Xmx` parameter.
>
> `Xms` paramater defines the minimum memory allocation to the java runtime (for example: `-Xms215M` this will give 215 Megabyte of minimum memory allocation or `-Xms1G` this will give a 1 Gigabyte of minimum memory allocation)
>
> `Xmx` paramater defines the maximum memory allocation to the java runtime (for example: `-Xms215M` this will give 215 Megabyte of maximum memory allocation or `-Xms1G` this will give a 1 Gigabyte of maximum memory allocation)

Now, there might the question that how to add more mods to the Server and to the Client end?

The answer is simple, Once you have setup and made your first run of your server and client. 

> For adding any new mods to the server make sure you are not running the forge server on the Raspberry Pi and same goes for the client end 

Hou have to get into the Opti-MC-MServer directory on server end and locate the mods folder and get your self into the mods folder and paste or download the new mod file in this directory

Once you have copleated the above step you have to do the same for the client end. you can follow the Step 3 in [Client-End-Installation.md](/Client-End-Installation.md) 

## Credits


## Contributing

Requests for pulls are always welcome!

Please raise an issue first to discuss the problem and what you'd like to modify.

Give a ⭐️ if you like this project!

