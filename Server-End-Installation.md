## Installation

### Step 1 : Setting up the Raspberry Pi

- Install the most recent version of the Raspberry Pi Imager. 
- Connect the SD card to an SD card reader.
- Open Raspberry Pi Imager -> Choose OS -> Raspberry Pi OS (other) -> Raspberry Pi OS Lite (64-bit)
- Select the SD card on which you want to save your image.
- Click on the gear icon -> Enable SSH -> add username and password -> If using wifi, add the SSID and password -> Save
- After you've made your selections, click the "Write" button to begin writing data to the SD Card.
- Connect the SD card to the Raspberry Pi and connect your USB power. It should boot now.
- You have completed this step 

### Step 2 : Connecting the Raspberry Pi to your PC via command prompt

Open a command prompt on your Windows PC and login to the Raspberry Pi via SSH using the command below.

 ```md
    ssh (rpi_username)@[rpi_ip_address]
 ```
  
  for example:
  
   ```md
      ssh pi@192.168.0.100
   ```

> Note: If you are not sure about rpi_ip_address, you should login to your router admin panel and have a look over there.

### Step 3 : Update Raspberry Pi

- First update download information for the packages in the Raspberry Pi repository. 
  ```md
     sudo apt-get update 
  ```
- Now download and update the packages on the Raspberry Pi
    
  ```md
     sudo apt-get upgrade 
  ```
- Now Reboot

  ```md
     sudo reboot
  ```

### Step 4 : Cloning the repository to the raspberry pi home directory

Before moving forward, by setting up everything we need for the repository on the Raspberry Pi.

```md
   git clone https://github.com/mechash/Opti-MC-MServer
```

### Step 5 :  Setting up Java Environment on Raspberry Pi

After updating RPi and cloning the directory, let's begin the actual work to set up the server.

- First change your work directory to the one we have cloned in the previous step

  ```md
     cd Opti-MC-MServer
  ```

- Move Java 8 ARM folder to /opt and change your directory 

  ```md 
     sudo mv Java\ 8\ ARM64/ /opt/
 
     cd /opt/Java\ 8\ ARM64/
  ```
- Extract the content of the file jdk-8u321-linux-aarch64.tar.gz 
 
  ```md
     sudo tar -zxvf jdk-8u321-linux-aarch64.tar.gz
  ```
- Setup the Java environment so that your system recognizes how to access the java binary

  ```md
     sudo update-alternatives --install /usr/bin/java java /opt/opt/Java\ 8\ ARM64/jdk-16.0.2/bin/java 1
  ```

- Finally, check your version to make sure you are using the right one.

  ```md
     java -version
  ```
  
  You should get something like this.
  
  ```md
     java version "1.8.0_321"
     Java(TM) SE Runtime Environment (build 1.8.0_321-b07)
     Java HotSpot(TM) 64-Bit Server VM (build 25.321-b07, mixed mode)  
  ```

### Step 6 : Forge Server Installation

- Change work directory 

  ```md
     cd ~/Opti-MC-MServer
  ```
  
- Run the forge installer file with the --installServer flag.

  ```md
     java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
  ```
  
  This will take a bit of time and will create new files
  
### Step 7 : Run the basic Minecraft Server

After completing Step 6, there will be new files in the directory. Before running the Forge Server, it is always best practice to launch a standard Minecraft Server.
so it will create additional files and you can see if there is any issue while running the standard server on your Raspberry Pi.

To run the Minecraft server run the command stated below

```md
   java -Xms512M -Xmx2500M minecraft_server.1.12.2.jar nogui
```
Once you have run the command without any errors, the result should look something like this.

```md
   pi@raspberrypi:~/Opti-MC-MServer $ java -Xms512M -Xmx2500M -jar minecraft_server.1.12.2.jar nogui
   [06:37:35] [Server thread/INFO]: Starting minecraft server version 1.12.2
   [06:37:35] [Server thread/INFO]: Loading properties
   [06:37:35] [Server thread/INFO]: Default game type: SURVIVAL
   [06:37:35] [Server thread/INFO]: Generating keypair
   [06:37:35] [Server thread/INFO]: Starting Minecraft server on *:25565
   [06:37:35] [Server thread/INFO]: Using default channel type
   [06:37:35] [Server thread/INFO]: Preparing level "world"
   [06:37:38] [Server thread/INFO]: Preparing start region for level 0
   [06:37:39] [Server thread/INFO]: Preparing spawn area: 4%
   [06:37:40] [Server thread/INFO]: Preparing spawn area: 6%
   [06:37:49] [Server thread/INFO]: Preparing spawn area: 16%
   [06:37:53] [Server thread/INFO]: Preparing spawn area: 25%
   [06:38:00] [Server thread/INFO]: Preparing spawn area: 33%
   [06:38:05] [Server thread/INFO]: Preparing spawn area: 51%
   [06:38:09] [Server thread/INFO]: Preparing spawn area: 68%
   [06:38:13] [Server thread/INFO]: Preparing spawn area: 85%
   [06:38:15] [Server thread/INFO]: Preparing spawn area: 92%
   [06:38:16] [Server thread/INFO]: Preparing spawn area: 95%
   [06:38:17] [Server thread/INFO]: Done (41.369s)! For help, type "help" or "?"
   [06:38:21] [Server thread/WARN]: Can't keep up! Did the system time change, or is the server overloaded? Running 4104ms behind, skipping 82 tick(s)
```
> To stop the server type stop as shown bellow 
> ```md 
>    [06:38:16] [Server thread/INFO]: Preparing spawn area: 95%
>    [06:38:17] [Server thread/INFO]: Done (41.369s)! For help, type "help" or "?"
>    [06:38:21] [Server thread/WARN]: Can't keep up! Did the system time change, or is the server overloaded? Running 4104ms behind, skipping 82 tick(s)
>    stop
> ```

Once you have successfully stopped the server, you will get a message similar to the one shown below.

```md
   [11:35:09] [Server thread/INFO]: Stopping the server
   [11:35:09] [Server thread/INFO]: Stopping server
   [11:35:09] [Server thread/INFO]: Saving players
   [11:35:09] [Server thread/INFO]: Saving worlds
   [11:35:09] [Server thread/INFO]: Saving chunks for level 'world'/overworld
   [11:35:09] [Server thread/INFO]: Saving chunks for level 'world'/the_nether
   [11:35:09] [Server thread/INFO]: Saving chunks for level 'world'/the_end
   [11:35:09] [Server Shutdown Thread/INFO]: Stopping server
   [11:35:09] [Server Shutdown Thread/INFO]: Saving players
   [11:35:09] [Server Shutdown Thread/INFO]: Saving worlds
```

### Step 7 : Running the Forge Minecraft Server 

- First, remove the generated world from the previous step.
  
  ```md
     rm -f -r world/
  ```
  
- Now run the forge-1.12.2-14.23.5.2860.jar like shown below 
 
  ```md
     java -Xms512M -Xmx3000M -jar forge-1.12.2-14.23.5.2860.jar nogui
  ```
  
> Note : Each time we execute this command to run the forge modded server, it will usually take up to 8 to 15 minutes to fully start.

You should get something similar when the server is up and running without any major issues 

```md
   [11:08:47] [Server thread/INFO] [minecraft/AdvancementList]: Loaded 886 advancements
   [11:08:48] [Server thread/INFO] [FTB Library]: Reloaded server in 42ms
   [11:08:48] [Server thread/INFO] [FTB Utilities]: Overridden 144 commands
   [11:08:49] [Server thread/INFO] [Astral Sorcery]: Load CachedWorldData 'lightnetwork' for world 0
   [11:08:49] [Server thread/INFO] [Astral Sorcery]: Loading of 'lightnetwork' for world 0 finished.
   [11:08:50] [Server thread/INFO] [FML]: Unloading dimension -1
   [11:08:50] [Server thread/INFO] [FML]: Unloading dimension 1
   [11:08:50] [Server thread/INFO] [FML]: Unloading dimension 7
   [11:08:55] [Server thread/WARN] [minecraft/MinecraftServer]: Can't keep up! Did the system time change, or is the server overloaded? Running 5004ms behind, skipping 100 tick(s)
```

### Step 8 : Running the Server after each Reboot 

If you are planning to use your Raspberry Pi only for hosting Minecraft servers to play with your friends, you can follow this step.

- Change work directory 
  
  ```md
     cd ~/Opti-MC-MServer
  ```
- Giving permission to the scrip

  ```md 
  sudo chmod +x mc-server.sh
  ```

- Adding the script to the LXDE Startup session
  
  - Edit the autostart script 

    ```md
       sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
    ```
  
    > You will find a few commands in this script like this:
    > ```md
    >    @lxpanel --profile LXDE-pi
    >    @pcmanfm --desktop --profile LXDE-pi
    > ```
  
  - Now add this line of text after @pcmanfm --************* on the next line
  
    ```md
       @lxterminal --command="/home/pi/Opti-MC-MServer/mc-server.sh
    ```
  
- Hurry!!! you are all set and done, now reboot and test the server
  
  ```md
     sudo reboot 
  ```
  
  ---
  
  ### For Client End Installation of this ModPack, please follow the steps stated in [Client-End-Installation.md](/Client-End-Installation.md) 
  
  
  
  
  
  
  
  
  
  
  
  
  
