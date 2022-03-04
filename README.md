# Optimised Minecraft Modpack for Raspberry Pi Server 


These instructions will guide you through the process of creating a modded Java Edition Minecraft Server on a RaspberryPi 3|4. 
I've put together a ModPack for this project that you may use for optimal gameplay while not overloading your little RaspberryPi Server. 
The modding scenario is entirely in the Java edition, and to connect to this server, you must be running Minecraft Java on a PC (Windows, Linux, or Mac).

Finally, these instructions are for Minecraft version 1.12.2. When it comes to mods, the version is everything, 
so make sure you get the correct version installed on both the client and server sides. If you want to add new mods to the server, follow the methods outlined here.
Because the regular Minecraft Java server is unable to execute the mods, we will need to download and install the appropriate version of Forge, which I will discuss later.



## Table of Contents (Optional)

- [Requirement](#Requirement)
- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

### Requrements

1. PC (Windows 10)
2. RaspberryPi 3/4 4GB+ (this modpack and the server was tested on RPi 4B 4GB, if you are planning to host more than 8 players on the server use 8GB varient for best performance)
3. Raspbin 64GB OS (you cant install jdk-8 on 32-bit OS and the server will crash)
4. jdk-8
5. Forge 
6.

### Installation

Step 1: Setting up Raspberry Pi

- Install the most recent version of Raspberry Pi Imager. 
- Connect the SD card to an SD card reader.
- Open Raspberry Pi Imager -> Choose OS -> Taspberry Pi OS (other) -> Raspberry Pi OS Lite (64-bit)
- Select the SD card on which you want to save your image.
- Click on the gear icon -> Enable SSH -> add username and password -> if using wifi add SSID and password -> save
- After you've made your selections, click the Write button to begin writing data to the SD Card.
- Connect the SD card to Raspberry Pi and connect your USB power it should boot now
- You have compleated this step 


### Usage

Provide instructions and examples for use. Include screenshots as needed.

To add a screenshot, create an `assets/images` folder in your repository and upload your screenshot to it. Then, using the relative filepath, add it to your README using the following syntax:

    ```md
    ![alt text](assets/images/screenshot.png)
    ```

## Credits

List your collaborators, if any, with links to their GitHub profiles.

If you used any third-party assets that require attribution, list the creators with links to their primary web presence in this section.

If you followed tutorials, include links to those here as well.

## License

The last section of a high-quality README file is the license. This lets other developers know what they can and cannot do with your project. If you need help choosing a license, refer to [https://choosealicense.com/](https://choosealicense.com/).

---

🏆 The previous sections are the bare minimum, and your project will ultimately determine the content of this document. You might also want to consider adding the following sections.

## Badges

![badmath](https://img.shields.io/github/languages/top/lernantino/badmath)

Badges aren't necessary, per se, but they demonstrate street cred. Badges let other developers know that you know what you're doing. Check out the badges hosted by [shields.io](https://shields.io/). You may not understand what they all represent now, but you will in time.

## Features

If your project has a lot of features, list them here.

## Contributing

Requests for pulls are always welcome!

Please raise an issue first to discuss the problem and what you'd like to modify.

Give a ⭐️ if you like this project!

