#!/bin/bash
#script to setup the rpi for auto run an App

#Assign the filenames and locations
boot_conf="/boot/config.txt"
openbox_conf="/etc/xdg/openbox/autostart"
lightdm_conf="/etc/lightdm/lightdm.conf"+
auto_message="System will Reboot in 15 seconds"

#Take the search string
lightdm_src="#xserver-command=X"
boot_src="#disable_overscan=1"

#Take the replace String
#replace the strings with new vars if its needed
lightdm_dst="xserver-command = X -nocursor"
boot_dst="disable_overscan=1"
boot_dst_setup="gpu_mem=256\ndisable_splash=1"
#openbox_dst="DISPLAY=:0 xrandr --output HDMI-1 --mode "1920x1080"\n<App/scriptname>" #replace <App/scriptname> with the script or app you wanna run at Bootup

#Choose between the Prod or Release script
read -p "Do you want the Test or Release setup? 1 for Development setup and 2 for Release: " setup_option #choose beteen the Test or Release section.

function development_setup()
{
    #Installing Terminal
    sudo apt-get install lxterminal -y
    #chmod 777 setup.sh remove_packages.sh mkimg.sh pishrink.sh

    #adds the commands to boot and openbox-autostart file
    echo -e $boot_dst_setup | sudo tee -a $boot_conf

    #searches and finds the string to get replaced for boot
    sudo sed -i "s/$boot_src/$boot_dst/" $boot_conf
}

function release_setup()
{
    #Installing the terminal
    sudo apt-get install lxterminal -y

    #adds the commands to boot and openbox-autostart file
    echo -e $boot_dst_setup | sudo tee -a $boot_conf

    #searches and finds the string to get replaced for boot
    #a bit buggy sometimes you need to change the perm for both
    sudo sed -i "s/$boot_src/$boot_dst/" $boot_conf

    #adds the commands to boot and openbox-autostart file
    #echo -e $openbox_dst | sudo tee -a $openbox_conf

    #searches and finds the string to get replaced for lightdm
    sudo sed -i "s/$lightdm_src/$lightdm_dst/" $lightdm_conf

    #installs the package/app and also fixes the error in case the .deb install fails
    sudo dpkg -i appbuild.deb -y #replace appbuild with the .deb package of your App
    sudo apt-get install -f

    #installing latest stable Nodejs
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs

    sleep 15
    echo $auto_message
    sudo reboot
}

case "$setup_option" in
    1) development_setup ;;
    2) release_setup ;;
    *) echo "Enter 1 or 2";;
esac
