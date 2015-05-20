export SOURCE_DIR = ~/downloads/sourced

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install axel
cd ~/Downloads

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install libappindicator1
sudo apt-get -f install

sudo apt-get install unity-tweak-tool 
sudo apt-get install openssh-server
sudo apt-get install git

# Teamviewer
wget http://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
sudo apt-get -f install

# install node
#manual
#sudo apt-get install g++ gcc python2.7 make
#cd ~/
#mkdir git
#cd git
#git clone https://github.com/joyent/node
#cd node
#./configure
#make
#sudo make install
sudo apt-get install nodejs
sudo ln /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm

sudo npm install grunt -g
sudo npm install gulp -g
sudo npm install bower -g

# Update node to latest 
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install JDK

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

cd ~/
echo JAVA_HOME=/usr/lib/jvm/java-8-oracle >> .bashrc
echo export JAVA_HOME >> .bashrc
echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' | sudo tee --append /etc/environment > /dev/null
echo 'export JAVA_HOME' | sudo tee --append /etc/environment > /dev/null

# Install android SDK tools
cd ~/Downloads 
wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
tar zxvf android-sdk_r24.1.2-linux.tgz
sudo mv android-sdk-linux /opt/google/android
cd ~/
echo ANDROID_HOME=/opt/google/android >> .bashrc
echo export ANDROID_HOME >> .bashrc
echo 'ANDROID_HOME=/opt/google/android' | sudo tee --append /etc/environment > /dev/null
echo 'export ANDROID_HOME' | sudo tee --append /etc/environment > /dev/null

# Ionic and cordova
sudo npm install cordova -g
sudo chown -R shafqat /usr/local/lib/node_modules/
sudo npm install cordova -g
sudo npm install ionic -g

# Add various ppas



sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" && wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - && sudo apt-get update && sudo apt-get install virtualbox-4.3 dkms

sudo apt-get install -y mongodb-org
sudo service mongod start


sudo apt-get install doublecmd-gtk
cd ~/Downloads
wget https://vivaldi.com/download/Vivaldi_TP3.1.0.162.4-1_amd64.deb


sudo apt-get install ant
sudo ln /opt/google/android/tools/android /usr/bin/android
sudo apt-get install gparted
sudo apt-get install conky conky-all


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


