#!/bin/bash
# sript to remove packages from raspbian OS
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr
# list packages: sudo apt list --installed

#Uncomment the sections you dont need, python etc are used, do research before removing
auto_message="System will Reboot in 10 seconds"

echo remove unused raspbian packages
echo size before removal 
sudo df -h

echo packages to remove:
#packages we need to remove
sudo apt-get remove --purge mysql-common -y
sudo apt-get remove --purge pi-bluetooth -y
sudo apt-get remove --purge pi-printer-support -y
sudo apt-get remove --purge printer-driver-escpr -y
sudo apt-get remove --purge printer-driver-gutenprint -y
sudo apt-get remove --purge printer-driver-hpcups -y
sudo apt-get remove --purge printer-driver-postscript-hp -y
sudo apt-get remove --purge system-config-printer-common -y
sudo apt-get remove --purge system-config-printer-udev -y
sudo apt-get remove --purge system-config-printer -y
# sudo apt-get remove --purge vim-common -y
# sudo apt-get remove --purge vim-tiny -y
sudo apt-get remove --purge vim* -y
sudo apt-get remove --purge orca* -y
sudo apt-get remove --purge wamerican* -y
sudo apt-get remove --purge wbritish* -y
sudo apt-get remove --purge ffmpeg* -y
sudo apt-get remove --purge galculator* -y
sudo apt-get remove --purge hplip* -y
sudo apt-get remove --purge hunspell* -y
sudo apt-get remove --purge chromium-browser* -y
sudo apt-get remove --purge chromium-codecs-ffmpeg-extra -y
sudo apt-get remove --purge hyphen* -y
sudo apt-get remove --purge qt5ct -y
sudo apt-get remove --purge qttranslations5-l10n -y
sudo apt-get remove --purge qpdfview* -y
sudo apt-get remove --purge vlc* -y
sudo apt-get remove --purge ghostscript* -y
sudo apt-get remove --purge wolfram-engine -y
sudo apt-get remove --purge bluej -y
sudo apt-get remove --purge Greenfoot -y
sudo apt-get remove --purge nodered -y
sudo apt-get remove --purge nuscratch -y
sudo apt-get remove --purge scratch -y
sudo apt-get remove --purge xarchiver* -y
sudo apt-get remove --purge dillo* -y
sudo apt-get remove --purge thonny* -y
sudo apt-get remove --purge geany -y
sudo apt-get remove --purge geany-common -y
sudo apt-get remove --purge penguinspuzzle -y
sudo apt-get remove --purge pgzero* -y
sudo apt-get remove --purge piclone* -y
sudo apt-get remove --purge realvnc-vnc-server* -y
sudo apt-get remove --purge lxtask* -y
sudo apt-get remove --purge rpd-wallpaper* -y
sudo apt-get remove --purge gpicview* -y
sudo apt-get remove --purge pipanel* -y
sudo apt-get remove --purge pi-packages* -y
sudo apt-get remove --purge rp-bookshelf* -y
sudo apt-get remove --purge debian-reference* -y
sudo apt-get remove --purge lxinput* -y
sudo apt-get remove --purge mousepad* -y
sudo apt-get remove --purge lx* -y
sudo apt-get remove --purge gcc* -y

#if the gcc* part is not working uncomment this section or if you want to uninstall manual certain packages
# sudo apt-get remove --purge gcc-4.9-base -y
# sudo apt-get remove --purge gcc-5-base -y
# sudo apt-get remove --purge gcc-6-base -y
# sudo apt-get remove --purge gcc-7-base -y
# sudo apt-get remove --purge gcc-8-base -y
# sudo apt-get remove --purge gcc-base -y
# sudo apt-get remove --purge libgcc-8-dev -y
# sudo apt-get remove --purge libgcc1 -y
#end of the gcc part

#if vlc* is not working uncomment this section or if you want to uninstall manual certain packages
# sudo apt-get remove --purge vlc-bin -y
# sudo apt-get remove --purge vlc-data -y
# sudo apt-get remove --purge vlc-l10n -y
# sudo apt-get remove --purge vlc-plugin-base -y
# sudo apt-get remove --purge vlc-plugin-notify -y
# sudo apt-get remove --purge vlc-plugin-qt -y
# sudo apt-get remove --purge vlc-plugin-samba -y
# sudo apt-get remove --purge vlc-plugin-skins2 -y
# sudo apt-get remove --purge vlc-plugin-video-output -y
# sudo apt-get remove --purge vlc-plugin-video-splitter -y
# sudo apt-get remove --purge vlc-plugin-visualization -y
#end of the removing part of VLC

#if qt5* is not working uncomment this parts or if you want to uninstall manual certain packages
# sudo apt-get remove --purge qt5-gtk-platformtheme -y
# sudo apt-get remove --purge qt5-style-plugins -y
# sudo apt-get remove --purge qt5ct -y
#end of removing QT5

#if qpdfview* is not working uncomment this parts to uninstall all packages for QT5 or if you want to uninstall manual certain packages
# sudo apt-get remove --purge qt5-gtk-platformtheme -y
# sudo apt-get remove --purge qqt5-style-plugins -y
# sudo apt-get remove --purge qt5ct -y
#end of removing QT5

#python
# sudo apt-get remove --purge python* -y
# sudo apt-get remove --purge python2* -y
# sudo apt-get remove --purge python2.7* -y
# sudo apt-get remove --purge python3* -y
# sudo apt-get remove --purge python3.7* -y


#if python* and python3* is not working uncomment this parts to uninstall all packages for Python, Python2/2.7 and Python3 or if you want to uninstall manual certain packages
#Python part
# sudo apt-get remove --purge python-all-dev -y
# sudo apt-get remove --purge python-all -y
# sudo apt-get remove --purge python-apt-common -y
# sudo apt-get remove --purge python-asn1crypto -y
# sudo apt-get remove --purge python-automationhat -y
# sudo apt-get remove --purge python-blinker -y
# sudo apt-get remove --purge python-blinkt -y
# sudo apt-get remove --purge python-buttonshim -y
# sudo apt-get remove --purge python-cairo -y
# sudo apt-get remove --purge python-cap1xxx -y
# sudo apt-get remove --purge python-certifi -y
# sudo apt-get remove --purge python-cffi-backend -y
# sudo apt-get remove --purge python-chardet -y
# sudo apt-get remove --purge python-click -y
# sudo apt-get remove --purge python-colorama -y
# sudo apt-get remove --purge python-colorzero -y
# sudo apt-get remove --purge python-configparser -y
# sudo apt-get remove --purge python-cookies -y
# sudo apt-get remove --purge python-crypto -y
# sudo apt-get remove --purge python-cryptography -y
# sudo apt-get remove --purge python-dbus -y
# sudo apt-get remove --purge python-dev -y
# sudo apt-get remove --purge python-drumhart -y
# sudo apt-get remove --purge python-entrypoints -y
# sudo apt-get remove --purge python-enum34 -y
# sudo apt-get remove --purge python-envirphat -y
# sudo apt-get remove --purge python-explorerhat -y
# sudo apt-get remove --purge python-flask -y
# sudo apt-get remove --purge python-fourletterphat -y
# sudo apt-get remove --purge python-funxsigs -y
# sudo apt-get remove --purge python-gi -y
# sudo apt-get remove --purge python-gobject-2 -y
# sudo apt-get remove --purge python-gpizero -y
# sudo apt-get remove --purge python-gtk2 -y
# sudo apt-get remove --purge python-idna -y
# sudo apt-get remove --purge python-ipaddress -y
# sudo apt-get remove --purge python-itsdangerous -y
# sudo apt-get remove --purge python-jinja2 -y
# sudo apt-get remove --purge python-jwt -y
# sudo apt-get remove --purge python-keyring -y
# sudo apt-get remove --purge python-keyrings.alt -y
# sudo apt-get remove --purge python-markupsafe -y
# sudo apt-get remove --purge python-microdotphat -y
# sudo apt-get remove --purge python-minimal -y
# sudo apt-get remove --purge python-mock -y
# sudo apt-get remove --purge python-mote -y
# sudo apt-get remove --purge python-motephat -y
# sudo apt-get remove --purge python-numpy -y
# sudo apt-get remove --purge python-oauthlib -y
# sudo apt-get remove --purge python-olefile -y
# sudo apt-get remove --purge python-openssl -y
# sudo apt-get remove --purge python-pantilthat -y
# sudo apt-get remove --purge python-pbr -y
# sudo apt-get remove --purge python-phatbeat -y
# sudo apt-get remove --purge python-pianohat -y
# sudo apt-get remove --purge python-picamera -y
# sudo apt-get remove --purge python-piglow -y
# sudo apt-get remove --purge python-pigpio -y
# sudo apt-get remove --purge python-pil -y
# sudo apt-get remove --purge python-pip-whl -y
# sudo apt-get remove --purge python-pip -y
# sudo apt-get remove --purge python-pkg-resources -y
# sudo apt-get remove --purge python-pygame -y
# sudo apt-get remove --purge python-pyinotify -y
# sudo apt-get remove --purge python-rainbowhat -y
# sudo apt-get remove --purge python-requests-oauthlib -y
# sudo apt-get remove --purge python-requests -y
# sudo apt-get remove --purge python-responses -y
# sudo apt-get remove --purge python-rpi.gpio -y
# sudo apt-get remove --purge python-rtimulib -y
# sudo apt-get remove --purge python-scrollphat -y
# sudo apt-get remove --purge python-scrollphathd -y
# sudo apt-get remove --purge python-secretstorage -y
# sudo apt-get remove --purge python-sense-hat -y
# sudo apt-get remove --purge python-serial -y
# sudo apt-get remove --purge python-setuptools -y
# sudo apt-get remove --purge python-simplejson -y
# sudo apt-get remove --purge python-six -y
# sudo apt-get remove --purge python-skywriter -y
# sudo apt-get remove --purge python-smbus -y
# sudo apt-get remove --purge python-sn3218 -y
# sudo apt-get remove --purge python-spidev -y
# sudo apt-get remove --purge python-talloc -y
# sudo apt-get remove --purge python-tk -y
# sudo apt-get remove --purge python-touchphat -y
# sudo apt-get remove --purge python-twython -y
# sudo apt-get remove --purge python-unicornhathd -y
# sudo apt-get remove --purge python-urllib3 -y
# sudo apt-get remove --purge python-werkzeug -y
# sudo apt-get remove --purge python-whell -y
# sudo apt-get remove --purge python-xdg -y

#python2 and python2.7part
# sudo apt-get remove --purge python2 -y
# sudo apt-get remove --purge python2.7 -y
# sudo apt-get remove --purge python2-dev -y
# sudo apt-get remove --purge python2-minmal -y
# sudo apt-get remove --purge python2.7-dev -y
# sudo apt-get remove --purge python2.7-minimal -y

#python3 part
# sudo apt-get remove --purge python3-apt -y
# sudo apt-get remove --purge python3-asn1crypto -y
# sudo apt-get remove --purge python3-astroid -y
# sudo apt-get remove --purge python3-asttokens -y
# sudo apt-get remove --purge python3-automationhat -y
# sudo apt-get remove --purge python3-blinker -y
# sudo apt-get remove --purge python3-blinkt -y
# sudo apt-get remove --purge python3-bs4 -y
# sudo apt-get remove --purge python3-buttonshim -y
# sudo apt-get remove --purge python3-cairo -y
# sudo apt-get remove --purge python3-cap1xxx -y
# sudo apt-get remove --purge python3-certifi -y
# sudo apt-get remove --purge python3-cffi-backend -y
# sudo apt-get remove --purge python3-chardet -y
# sudo apt-get remove --purge python3-click -y
# sudo apt-get remove --purge python3-colorama -y
# sudo apt-get remove --purge python3-colorzero -y
# sudo apt-get remove --purge python3-cookies -y
# sudo apt-get remove --purge python3-crypto -y
# sudo apt-get remove --purge python3-cryptography -y
# sudo apt-get remove --purge python3-cups -y
# sudo apt-get remove --purge python3-cupshelpers -y
# sudo apt-get remove --purge python3-dbus -y
# sudo apt-get remove --purge python3-debconf -y
# sudo apt-get remove --purge python3-dev -y
# sudo apt-get remove --purge python3-distutils -y
# sudo apt-get remove --purge python3-docutils -y
# sudo apt-get remove --purge python3-drumhart -y
# sudo apt-get remove --purge python3-entrypoints -y
# sudo apt-get remove --purge python3-envirphat -y
# sudo apt-get remove --purge python3-explorerhat -y
# sudo apt-get remove --purge python3-flask -y
# sudo apt-get remove --purge python3-fourletterphat -y
# sudo apt-get remove --purge python3-gi -y
# sudo apt-get remove --purge python3-gpizero -y
# sudo apt-get remove --purge python3-html5lib -y
# sudo apt-get remove --purge python3-idna -y
# sudo apt-get remove --purge python3-isort -y
# sudo apt-get remove --purge python3-itsdangerous -y
# sudo apt-get remove --purge python3-jedi -y
# sudo apt-get remove --purge python3-jinja2 -y
# sudo apt-get remove --purge python3-jwt -y
# sudo apt-get remove --purge python3-keyring -y
# sudo apt-get remove --purge python3-keyrings.alt -y
# sudo apt-get remove --purge python3-lazy-object-proxy -y
# sudo apt-get remove --purge python3-lib2to3 -y
# sudo apt-get remove --purge python3-logilab-common -y
# sudo apt-get remove --purge python3-lxml -y
# sudo apt-get remove --purge python3-markupsafe -y
# sudo apt-get remove --purge python3-mccabe -y
# sudo apt-get remove --purge python3-microdotphat -y
# sudo apt-get remove --purge python3-minimal -y
# sudo apt-get remove --purge python3-mote -y
# sudo apt-get remove --purge python3-motephat -y
# sudo apt-get remove --purge python3-mypy-extensions -y
# sudo apt-get remove --purge python3-mypy -y
# sudo apt-get remove --purge python3-numpy -y
# sudo apt-get remove --purge python3-oauthlib -y
# sudo apt-get remove --purge python3-olefile -y
# sudo apt-get remove --purge python3-openssl -y
# sudo apt-get remove --purge python3-pantilthat -y
# sudo apt-get remove --purge python3-parso -y
# sudo apt-get remove --purge python3-pexpect -y
# sudo apt-get remove --purge python3-pgzero -y
# sudo apt-get remove --purge python3-phatbeat -y
# sudo apt-get remove --purge python3-pianohat -y
# sudo apt-get remove --purge python3-picamera -y
# sudo apt-get remove --purge python3-piglow -y
# sudo apt-get remove --purge python3-pigpio -y
# sudo apt-get remove --purge python3-pil -y
# sudo apt-get remove --purge python3-pip -y
# sudo apt-get remove --purge python3-pkg-resources -y
# sudo apt-get remove --purge python3-psutil -y
# sudo apt-get remove --purge python3-ptyprocess -y
# sudo apt-get remove --purge python3-pygame -y
# sudo apt-get remove --purge python3-pygments -y
# sudo apt-get remove --purge python3-pyinotify -y
# sudo apt-get remove --purge python3-rainbowhat -y
# sudo apt-get remove --purge python3-renderpm -y
# sudo apt-get remove --purge python3-reportlab-accel -y
# sudo apt-get remove --purge python3-reportlab -y
# sudo apt-get remove --purge python3-requests-oauthlib -y
# sudo apt-get remove --purge python3-requests -y
# sudo apt-get remove --purge python3-responses -y
# sudo apt-get remove --purge python3-roman -y
# sudo apt-get remove --purge python3-rpi.gpio -y
# sudo apt-get remove --purge python3-rtimulib -y
# sudo apt-get remove --purge python3-scrollphat -y
# sudo apt-get remove --purge python3-scrollphathd -y
# sudo apt-get remove --purge python3-secretstorage -y
# sudo apt-get remove --purge python3-send2trash -y
# sudo apt-get remove --purge python3-sense-hat -y
# sudo apt-get remove --purge python3-serial -y
# sudo apt-get remove --purge python3-setuptools -y
# sudo apt-get remove --purge python3-simplejson -y
# sudo apt-get remove --purge python3-six -y
# sudo apt-get remove --purge python3-skywriter -y
# sudo apt-get remove --purge python3-smbc -y
# sudo apt-get remove --purge python3-smbus -y
# sudo apt-get remove --purge python3-sn3218 -y
# sudo apt-get remove --purge python3-soupsieve -y
# sudo apt-get remove --purge python3-spidev -y
# sudo apt-get remove --purge python3-tk -y
# sudo apt-get remove --purge python3-touchphat -y
# sudo apt-get remove --purge python3-twython -y
# sudo apt-get remove --purge python3-typed-ast -y
# sudo apt-get remove --purge python3-unicornhathd -y
# sudo apt-get remove --purge python3-urllib3 -y
# sudo apt-get remove --purge python3-venv -y
# sudo apt-get remove --purge python3-webencodings -y
# sudo apt-get remove --purge python3-werkzeug -y
# sudo apt-get remove --purge python3-wheel -y
# sudo apt-get remove --purge python3-wrapt -y
# sudo apt-get remove --purge python3-xdg -y

#python3.7
# sudo apt-get remove --purge python3.7-dev -y
# sudo apt-get remove --purge python3.7-minimal -y
# sudo apt-get remove --purge python3.7-venv -y
#end of the removing part for Python, Python2/2.7 and Python3

sudo apt-get clean
sudo apt-get autoremove -y

echo size after removing packages
sudo df -h
sleep 10
echo $auto_message
sudo reboot
