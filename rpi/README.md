## raspberryPi openFrameworks 24/7
this is a tutorial for optimizing your rasperry pi for openFrameworks, it assumes your are using linux on your computer and start from a raspbian minimal sd card on the rPi. You can use 95% of the commands also if you are using other system, just find a solution for the remaining


### flash image (linux only)
check drives  
`lsblk`  
  
if needed umount  
`umount /dev/sdx`  
  
zero out the card (optional)   
`$ sudo dd bs=4M if=/dev/zero of=/dev/sdx`  
  
flash the image  
`$ sudo dd bs=4M if=path_to_raspbian_minimal.img of=/dev/sdx`  


in .bashrc decomment   
`export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'`

### raspi config

`sudo raspi-config  `
>expand filesystem  
>overclock to rPi2  
>set up keyboard layout  
>boot to user without password  
>deactivate wait for network  
>audio through speakers not hdmi  
>128mb to graphics

(optional)  
`sudo dpkg-reconfigure console-setup`  
>set font to terminus

### update system
```
sudo apt-get clean  
sudo apt-get update
sudo apt-get dist-upgrade
```


### install git and utilities
`sudo apt-get install git nmon`  

   
### openFrameworks (bakercp method 1 (brcm))

Prepare your Raspberry Pi Firmware to use the “Legacy” GL drivers
`sudo raspi-config`   
a. Advanced Options > GL Driver > “G3 Legacy” "Original non-GL desktop driver   
b. Finish and reboot.   
   
Download and install openFrameworks (master branch)   
```console
cd ~
git clone --depth=1 https://github.com/openFrameworks/openFrameworks.git
cd openFrameworks
sudo ./scripts/linux/debian/install_dependencies.sh
sudo ./scripts/linux/debian/install_codecs.sh
./scripts/linux/download_libs.sh
```
Modify Your config.linuxarmv6l.default.mk File   
`nano libs/openFrameworksCompiled/project/linuxarmv6l/config.linuxarmv6l.default.mk`
the platform libraries should be like this:
```
PLATFORM_LIBRARIES += brcmGLESv2
PLATFORM_LIBRARIES += brcmEGL
```
also in the same file change `vfp` to `neon`, in neon also vfp is active, this is for later with ofxPDSP
```
PLATFORM_CFLAGS += -mfpu=neon
```
compile by testing an example
```console
cd ~/openFrameworks/
cp scripts/templates/linuxarmv6l/Makefile examples/templates/emptyExample/
cd examples/templates/emptyExample/
make -j2 -s
make run
```

then install all the addons, and compile the junkrepo and the osc apps


### oF addons

some addons that works well on the rpi

```
cd ~/your_of_folder/addons  
git clone https://github.com/kashimAstro/ofxTFTTouch.git  
git clone https://github.com/kashimAstro/ofxGPIO.git  
git clone https://github.com/npisanti/ofxMidi.git  
git clone https://github.com/npisanti/ofxAudioFile.git  
git clone https://github.com/npisanti/ofxSIMDFloats.git  
git clone https://github.com/npisanti/ofxPDSP.git  
git clone https://github.com/npisanti/ofxRPiezos.git  
git clone https://github.com/kylemcdonald/ofxCv.git
git clone https://github.com/patriciogonzalezvivo/ofxThermalPrinter.git  
git clone https://github.com/npisanti/ofxPDSPPatches.git
git clone https://github.com/nariakiiwatani/ofxWatchFile
git clone https://github.com/npisanti/ofxDotFrag.git
git clone https://github.com/Flightphase/ofxImageSequence.git

```

### other apps 
```
cd ~/openFrameworks/apps
git clone https://github.com/npisanti/oscworks
```

### enable arduino

add "pi" (or your userid) to tty and dialout groups for working with arduino  
```
sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi
```


### optimizations for reducing card wearing
remove the card from the rpi, mount it on your laptop and use this command to disable journaling (linux only)  
`sudo tune2fs -O ^has_journal /dev/sdb2`  

then log again into the pi  
```
sudo apt-get remove dphys-swapfile
sudo apt-get autoremove
```

also 
```
sudo nano /etc/fstab
```
add  
```
tmpfs /var/tmp tmpfs nodev,nosuid,size=32M 0 0  
tmpfs /var/log tmpfs nodev,nosuid,size=16M 0 0  
```
(this will make temporary filesystems on the RAM for `/var/log` and `/var/tmp`

( for saving your rpi is also a good idea to use heatsinks )


### create jumper shutdown file

copy `gpio_shutdown.py` to the home folder   
   
then make it executable   
`chmod +x ~/gpio_shutdown.py`
   
   
### copy autorun file
copy `autorun.sh` file to home folder
   
    
### enable autorun and gpio shutdown
now we will activate the autorun routine at startup, and enable safe shutdown by putting a jumper on the 5-6 pins. We will also put an extra command to be shure the video never shuts down  
do  
`sudo nano /etc/rc.local`  
and add  
```sh
#deactivate blanking 
setterm -blank 0 -powerdown 0 -powersave off

# shutdown with pin 39-40
python /home/pi/gpio_shutdown.py &

#autorun
(sleep 3; su - pi -c "sh /home/pi/autorun.sh" ) &
```   
