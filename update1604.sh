#sudo apt-get update
#sudo apt-get dist-upgrade

# Chrome
#cd /tmp
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt-get install libappindicator1 -y
#sudo apt-get -f install

# Other tools
#sudo apt-get install unity-tweak-tool openssh-server git mc -y 

# Install Node

#sudo apt install nodejs npm -y
#sudo npm install grunt gulp bower -g

# Update node to latest 
# sudo npm cache clean -f
# sudo npm install -g n
#sudo n stable


#git config --global user.email "shafqatahmed@gmail.com"
#git config --global user.name "Shafqat Ahmed"

# Install JDK
#sudo apt-get install default-jre
#sudo apt-get install default-jdk

######################ORACLE JDK 
#sudo apt-get install python-software-properties
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install oracle-java8-installer
#cd ~/
#echo JAVA_HOME=/usr/lib/jvm/java-8-oracle >> .bashrc
#echo export JAVA_HOME >> .bashrc
#echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' | sudo tee --append /etc/environment > /dev/null
#echo 'export JAVA_HOME' | sudo tee --append /etc/environment > /dev/null
######################################################

#sudo apt-get install mc doublecmd-gtk gparted conky conky-all -y
## Install Titillioum Font
#cd ~/Downloads
#wget http://www.fontsquirrel.com/fonts/download/Titillium
#mv Titillium Titillium.zip
#unzip Titillium.zip -d Titillium
#sudo cp ./Titillium/*.otf /usr/share/fonts/ 

# Install Wine 
#sudo apt-get install wine

# Install VS Code
#sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
#sudo apt-get update && sudo apt-get install ubuntu-make
#umake web visual-studio-code

umake ide webstorm
umake ide pycharm-professional
umake ide idea-ultimate
umake go go-lang
umake ide eclipse 


exit 


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

# Play on linux 
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





