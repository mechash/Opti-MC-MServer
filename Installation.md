## Installation

### Step 1 : Setting up Raspberry Pi

- Install the most recent version of Raspberry Pi Imager. 
- Connect the SD card to an SD card reader.
- Open Raspberry Pi Imager -> Choose OS -> Taspberry Pi OS (other) -> Raspberry Pi OS Lite (64-bit)
- Select the SD card on which you want to save your image.
- Click on the gear icon -> Enable SSH -> add username and password -> if using wifi add SSID and password -> save
- After you've made your selections, click the Write button to begin writing data to the SD Card.
- Connect the SD card to Raspberry Pi and connect your USB power it should boot now
- You have compleated this step 

### Step 2 : Connecting Raspberry Pi to your PC via command prompt

Open command prompt on your windows pc and login to raspberry pi via SSH using the command below

 ```md
   ssh (rpi_username)@[rpi_ip_address]
  ```
  
  for example:
  
   ```md
    ssh pi@192.168.0.100
   ```

> Note: if you are not sure about rpi_ip_address you should login to your router admin pannel and have a look over there.

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

### Step 4 : Cloning the repositoary to the raspberry pi home directoary

Before moving forward by setting up everyting we need to the repository on Raspberry Pi

```md
  git clone https://github.com/mechash/Opti-MC-MServer
  ```

### Step 5 :  Setting up java enviroment on Raspberry Pi

After updating RPi and cloning the directory lets begin the actual work to setup the server

- First change your work directoary to the one we have cloned in previous step

  ```md
    cd Opti-MC-MServer
  ```

- Move Java 8 ARM folder to /opt
  ```md 
    sudo mv Java\ 8\ ARM64/ /opt/
  ```
