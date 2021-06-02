# Package-Remover #

Package-Remover is a bash script that atuomatically removes packages, to create a PI without any GUI, cursor or anything. For example using the PI to run a Slideshow as a
app on a TV or something else.

## Usage & Installation ##

```bash
git clone https://github.com/dword64/Package-Remover.git
cd /Package-Remover
chmod 777 remove_packages.sh setup.sh test.sh
./remove_packages.sh
```

After the reboot, your PI is only aviable over SSH, so make sure to have SSH active. Then run over SSH. You can scp your files into youre PI.
```bash
./setup.sh
```
# Test #

The Test.sh is just a script if you run into Problems, its showing whats missing or is installed.

Usage
```bash
./test.sh
```

# SCP PART #
Replace filename and PI with your File you want to transfer and the username for you pi. Replace hostname with the IP/Domain of your PI after the ":" you can set the location where to
safe the Files on your pi "~" means the home folder.

```bash
scp filename pi@hostname:~
```


## Contributing ##

If you find a bug please create an issue for it. If you would like a new feature added, you can create an issue for it but I can't promise that I will get to it.

Pull requests for new features and bug fixes are more than welcome!
