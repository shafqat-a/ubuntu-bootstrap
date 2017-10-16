

ub-updateLinux () {
    sudo apt-get update
    sudo apt-get dist-upgrade
}

ub-installChrome() {
    # Chrome
    cd /tmp
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install libappindicator1 -y
    sudo apt-get -f install
}

ub-installToolset1() {
    sudo apt-get install unity-tweak-tool openssh-server git mc -y 
    git config --global user.email "shafqatahmed@gmail.com"
    git config --global user.name "Shafqat Ahmed"
}

ub-installNodeJs(){
    # Install Node

    sudo apt install nodejs npm -y
    sudo npm install grunt gulp bower -g

    # Update node to latest 
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n stable
}


ub-installOpenJdk() {
    # Install JDK
    sudo apt-get install default-jre -y
    sudo apt-get install default-jdk -y
}

ub-installOracleJdk() {
    ######################ORACLE JDK 
    sudo apt-get install python-software-properties -y
    sudo add-apt-repository ppa:webupd8team/java -y
    sudo apt-get update
    sudo apt-get install oracle-java8-installer -y
    cd ~/
    echo JAVA_HOME=/usr/lib/jvm/java-8-oracle >> .bashrc
    echo export JAVA_HOME >> .bashrc
    echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' | sudo tee --append /etc/environment > /dev/null
    echo 'export JAVA_HOME' | sudo tee --append /etc/environment > /dev/null
    ######################################################
}

ub-installToolSet2(){
    sudo apt-get install mc doublecmd-gtk gparted conky conky-all terminator -y
}

ub-installFonts() {
    ## Install Titillioum Font
    cd ~/Downloads
    wget http://www.fontsquirrel.com/fonts/download/Titillium
    mv Titillium Titillium.zip
    unzip Titillium.zip -d Titillium
    sudo cp ./Titillium/*.otf /usr/share/fonts/ 
}


ub-installWine() {
    # Install Wine 
    sudo apt-get install wine
}


ub-installIDEs() {
    # Install VS Code
    sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
    sudo apt-get update && sudo apt-get install ubuntu-make
    umake web visual-studio-code

    umake ide webstorm
    umake ide pycharm-professional
    umake ide idea-ultimate
    umake go go-lang
    umake ide eclipse 
}


ub-installThemeMacbuntu() {
    # Noobslab Macbuntu Theme
    cd /tmp
    wget http://drive.noobslab.com/data/Mac/MacBuntu-Wallpapers.zip
    unzip MacBuntu-Wallpapers.zip -d ~/Pictures/
    sudo add-apt-repository ppa:noobslab/macbuntu -y
    sudo apt-get update
    sudo apt-get install macbuntu-os-icons-lts-v7 macbuntu-os-ithemes-lts-v7 -y
}

ub-installPlayOnLinux() {
    wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
    sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
    sudo apt-get update
    sudo apt-get install playonlinux -y
}

ub-updateWifiDriverAndKernel () {
    cd /lib/firmware
    sudo wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/iwlwifi-8000C-27.ucode
    cd tmp/
    mkdir kernels
    cd /tmp/kernels/
    wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13/linux-headers-4.13.0-041300_4.13.0-041300.201709031731_all.deb
    wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13/linux-headers-4.13.0-041300-generic_4.13.0-041300.201709031731_amd64.deb
    wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13/linux-image-4.13.0-041300-generic_4.13.0-041300.201709031731_amd64.deb
    rm *.deb
    sudo dpkg -i *.deb
    sudo reboot
}

up-installDocker(){
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt install docker-ce -y
}

up-installThemes (){
    sudo add-apt-repository ppa:ravefinity-project/ppa -y
    sudo add-apt-repository ppa:snwh/pulp -y
    sudo add-apt-repository ppa:noobslab/themes -y
    sudo add-apt-repository ppa:system76/pop -y
    sudo add-apt-repository ppa:numix/ppa -y 
    sudo apt-get update
    sudo apt-get install numix-gtk-theme numix-icon-theme numix-folders  numix-icon-theme-circle  numix-icon-theme-square -y
    sudo apt-get install flat-remix-gs-theme  ultimate-blue-theme t4g-v2-theme pop-gtk-theme pop-gnome-shell-theme -y
    sudo apt-get install minwaita-theme vimix-gtk-themes arc-theme paper-gtk-theme paper-icon-theme paper-cursor-theme ambiance-colors radiance-colors -y
}

return



# Install android SDK tools
#cd ~/Downloads 
#wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
#tar zxvf android-sdk_r24.1.2-linux.tgz
#sudo mv android-sdk-linux /opt/google/android
#cd ~/
#echo ANDROID_HOME=/opt/google/android >> .bashrc
#echo export ANDROID_HOME >> .bashrc
#echo 'ANDROID_HOME=/opt/google/android' | sudo tee --append /etc/environment > /dev/null
#echo 'export ANDROID_HOME' | sudo tee --append /etc/environment > /dev/null

# Ionic and cordova
#sudo npm install cordova -g
#sudo chown -R shafqat /usr/local/lib/node_modules/
#sudo npm install cordova -g
#sudo npm install ionic -g

# Add various ppas


#sudo ln /opt/google/android/tools/android /usr/bin/android
#sudo apt-get install conky conky-all


# Themes & Icons
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:numix/ppa 
sudo add-apt-repository ppa:webupd8team/themes 

sudo add-apt-repository ppa:noobslab/icons
sudo add-apt-repository ppa:nitrux-team/nitrux-artwork
sudo add-apt-repository ppa:noobslab/evolvere

sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-bevel numix-icon-theme-circle
sudo apt-get install zukitwo zukiwi mac-ithemes-v3 mac-icons-v3 orchis3 flattastic-suite trevilla-themes vimix-flat-themes emerald-icon-theme nitrux-icon-theme azure-gtk-theme # gnomishbeige-theme gnomishdark-theme gnomishgrey-theme
sudo apt-get install evolvere-icon-suite

# Play on linux https://go.skype.com/linux.deb
sudo add-apt-repository ppa:noobslab/apps
sudo apt-add-repository -y ppa:teejee2008/ppa

sudo apt-get update
sudo apt-get install playonlinux minitube uget aria2 conky-manager

# Install Titillioum Font
cd ~/Downloads
wget http://www.fontsquirrel.com/fonts/download/Titillium
mv Titillium Titillium.zip
unzip Titillium.zip -d Titillium
sudo cp ./Titillium/*.otf /usr/share/fonts/ 

# Install Wine 
sudo apt-get install wine

# Install VS Code
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update && sudo apt-get install ubuntu-make
umake web visual-studio-code

# Only office - Amazing
# sudo add-apt-repository "deb http://download.onlyoffice.com/repo/debian squeeze main"
# wget http://download.onlyoffice.com/repo/onlyoffice.key
# sudo apt-key add onlyoffice.key
# sudo apt-get update
# sudo apt-get install onlyoffice

# fix the build bug
sudo mv /usr/bin/android /usr/bin/android2

sudo add-apt-repository "deb http://download.opensuse.org/repositories/home:/sarimkhan/xUbuntu_14.04/ ./"
wget -q http://download.opensuse.org/repositories/home:/sarimkhan/xUbuntu_14.04/Release.key -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install ibus-avro-trusty

cd ~/Downloads
#Download webstorm
wget http://download-cf.jetbrains.com/webstorm/WebStorm-10.0.2.tar.gz 

#get Davmail 
wget http://heanet.dl.sourceforge.net/project/davmail/davmail/4.6.1/davmail_4.6.1-2343-1_all.deb





