!#/bin/zsh

sudo mkdir -p /temp
sudo mkdir -p ~/bin
cd /temp

######################################################################################
### Homebrew #########################################################################
### https://docs.brew.sh/Homebrew-on-Linux ###########################################
######################################################################################
### Note: Not sure I need this
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# # Add Homebrew to PATH
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)


######################################################################################
### FlatPak ##########################################################################
### https://flatpak.org/setup/Pop!_OS/ ###############################################
######################################################################################
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


###################################################################
### ZSH  ##########################################################
###################################################################
sudo apt install zsh
chsh -s $(which zsh)
curl -L git.io/antigen > ~/bin/antigen.zsh
echo "YOU NEED TO LOG OUT AND LOG BACK IN"


######################################################################################
### CLI Package Installs #############################################################
######################################################################################
sudo apt install curl
sudo apt install file
sudo apt install git
sudo apt install build-essential
sudo apt install vim
sudo apt install neofetch # Fancy OS terminal output
sudo apt install tig # Git GUI
sudo apt install gparted # Visualize drives/partitions
sudo apt install silversearcher-ag # Better grep
sudo apt install ripgrep # Saner defaults than ag
sudo apt install autojump # Better grep
sudo apt install lua5.3
sudo apt install xclip # copy/pasta clipboard
sudo apt install pop-desktop # for multi-de switching at login
sudo apt install ranger


###################################################################
### Dotfiles / RCM ################################################
### https://github.com/thoughtbot/rcm #############################
### http://thoughtbot.github.io/rcm/rcm.7.html ####################
### lsrc, mkrc, rcdn, rcup
###################################################################
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm
# TODO: git clone my shiz to ~/.dotfiles
lsrc # dry run, scope out what's going to happen
rcup -v


###################################################################
### i3 ############################################################
###################################################################
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake
sudo add-apt-repository -y ppa:kgilmer/speed-ricer
sudo apt install i3-gaps
sudo apt install polybar

###################################################################
### Node / NPM / Yarn  ############################################
###################################################################
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash


###################################################################
### SpaceVim ######################################################
###################################################################
curl -sLf https://spacevim.org/install.sh | bash


###################################################################
### Lutris ########################################################
###################################################################
sudo apt install lutris
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install nvidia-driver-430 libnvidia-gl-430 libnvidia-gl-430:i386
sudo apt install libvulkan1 libvulkan1:i386
echo "YOU NEED TO REBOOT"


###################################################################
### GUI Package Installs ##########################################
###################################################################
sudo apt install discord
sudo apt install steam
sudo apt install google-chrome-stable
sudo apt install slack-desktop
flatpak install flathub com.spotify.Client
# Battle.net
# Hearthtone
# Magic Aren
# VSCode
# Notion
# TODOist


#########################################################################
### Special Install: Magic Mouse Driver #################################
### https://github.com/RicardoEPRodrigues/Linux-Magic-Trackpad-2-Driver #
#########################################################################
sudo apt-get install dkms
cd ~/bin
git clone https://github.com/RicardoEPRodrigues/Linux-Magic-Trackpad-2-Driver.git
cd Linux-Magic-Trackpad-2-Driver
chmod u+x install.sh
sudo ./install.sh


##################################################################
### Special Install: Magic Mouse #################################
##################################################################


##################################################################
### Settings #####################################################
##################################################################
# TODO: Don't know the settings for these
# natural scroll trackpad
# key repeat

# Keyboard stays active when typing. 
# Useful for if you're setting a mech keyboard on top of internal
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing false

