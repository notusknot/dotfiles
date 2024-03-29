# Dotfiles

**These are not my main dotfiles. I currently use home-manager on NixOS to manage my configurations. The install script will work for most distros, and this repo will still be updated, but not as often as my main one. If you use home-manager and want my configuration, please visit the [main repo](https://github.com/notusknot/dotfiles-nix)**


 ## Table of Contents

- [Screenshots](#screenshots)
- [Installation](#installation)
- [Documentation](#documentation)

## Screenshots
![Screenshot-of-my-rice](https://github.com/notusknot/dotfiles/blob/7f158a08780e8f8246031df5aab5574c5012f183/screenshots/rice.png)

## Installation

Dependencies:
- ```zsh``` as a shell
- ```bspwm``` as a window manager
- ```sxhkd``` as a hotkey daemon
- ```dunst``` as a notification daemon
- ```picom``` as a compositor
- ```rxvt-unicode``` as a terminal emulator
- ```polybar``` as a system bar

Obviously, if you don't want to use any of these programs for whatever reason, you don't have to install them. The install script will still apply the themes to all the other programs.

***Note**: please read the install script and make a backup of your current configs before running it.*
To install my dotfiles, you can use the automated install script:
- ```git clone https://github.com/notusknot/dotfiles```
- ```cd dotfiles```
- ```./install.sh```

If you don't trust it, you can clone the repo and manually move the files into all the proper locations. 

## Documentation

These are my configuration files for the programs listed in the [installation instructions.](#installation)

My window manager of choice is ```bspwm```. I use it because I like how simple it is to configure while still being relatively powerfull and extensible. If you want to learn how to use it better, check out [my tutorial](https://youtu.be/_55HGnz422M) for it. To manage keybinds, I use ```sxhkd``` because it works well and was made to seamlessly integrate with bspwm.


**If you want more documentation, feel free to submit an issue or contact me on Discord: ```notusknot#5622```. More files coming soon...**

