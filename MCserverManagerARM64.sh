#! /bin/bash
echo "Developed By Bluehornnet V1.0"
echo "Please Choose An Option"
echo "
1)Start Server
2)Install / Update Minecraft
3)Install Java 16
4)Install Everything and Run (Easy First Time Setup)
5)Update Server And Start Server"


echo
echo "please choose 1-5"
read choice

if [ "$choice" == "1" ]; then
clear
echo "If this is your first time starting the server 
after it has started for the first time 
you need to look for a file called eula open it and change 
it from false to true


How Much Ram Would You Like to dedicate to the Server?
   
  "
echo "please enter the amount below in MB the number only"
read ram
clear
echo "Starting server with $ram MB of Ram"
cd /home/pi/minecraft
export PATH=$PWD/jdk-16.0.2+7/bin:$PATH
echo "accepting eula"
echo eula=true > eula.txt
java -Xms"$ram"M -Xmx"$ram"M -jar paperclip.jar 
read ok
fi

if [ "$choice" == "2" ]; then
clear
echo "What is the current version of minecraft?"
read version
clear
echo "installing server.jar minecraft version $version"
mkdir /home/pi/minecraft
cd /home/pi/minecraft
wget -O paperclip.jar https://papermc.io/api/v1/paper/"$version"/latest/download
read else
fi

if [ "$choice" == "3" ]; then
clear
echo "Installing Java"
sudo apt-get install openjdk-11-jdk -y
echo "installing screen"
sudo apt-echo eula=true > eula.txtget install screen -y
mkdir /home/pi/minecraft
cd /home/pi/minecraft
wget https://github.com/adoptium/temurin16-binaries/releases/download/jdk-16.0.2%2B7/OpenJDK16U-jdk_aarch64_linux_hotspot_16.0.2_7.tar.gz
tar xzf OpenJDK16U-jdk_aarch64_linux_hotspot_16.0.2_7.tar.gz
echo "Java16 has been installed"
read else
fi

if [ "$choice" == "4" ]; then
clear
echo "Before you start this will create a folder in /home/pi/minecraft
there will be a file called MCServerManager.sh run that script every time 
you start or make changes to the server

What is the current version of minecraft?"
read version
clear
echo "installing server.jar minecraft version $version"
mkdir /home/pi/minecraft
cd /home/pi/minecraft
wget -O paperclip.jar https://papermc.io/api/v1/paper/"$version"/latest/download
echo "Installing legacy Java"
sudo apt-get install openjdk-11-jdk -y
echo "installing screen"
sudo apt-get install screen -y
echo "Installing Java 16"
wget https://github.com/adoptium/temurin16-binaries/releases/download/jdk-16.0.2%2B7/OpenJDK16U-jdk_aarch64_linux_hotspot_16.0.2_7.tar.gz
tar xzf OpenJDK16U-jdk_aarch64_linux_hotspot_16.0.2_7.tar.gz
echo "Java 16 Installed"
sleep 5s
clear
echo " How Much Ram Would You Like to dedicate to the Server? In MB
32bit os Max 2600MB server tends to be unstable past 2600MB
   
  "
echo "please enter the amount below in MB the number only"
read ram
clear
echo "Starting server with $ram MB of Ram"
cd /home/pi/minecraft
export PATH=$PWD/jdk-16.0.2+7/bin:$PATH
echo "accepting eula"
echo eula=true > eula.txt
java -Xms"$ram"M -Xmx"$ram"M -jar paperclip.jar 
read ok
fi
if [ "$choice" == "5" ]; then
clear
echo "what is the current version of minecraft?"
read version
clear
echo "Updating the server to the latest $version version"
cd /home/pi/minecraft
wget -O paperclip.jar https://papermc.io/api/v1/paper/"$version"/latest/download
echo "Server Has Been Updated"
sleep 5s
clear
echo "How Much Ram Would You Like to dedicate to the Server?
   
  "
echo "please enter the amount below in MB the number only"
read ram
clear
echo "Starting server with $ram MB of Ram"
cd /home/pi/minecraft
export PATH=$PWD/jdk-16.0.2+7/bin:$PATH
echo "accepting eula"
echo eula=true > eula.txt
java -Xms"$ram"M -Xmx"$ram"M -jar paperclip.jar 
read ok

fi
