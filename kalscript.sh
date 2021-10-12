#!/bin/bash

echo -e "\e[1m****************************************************************************"
echo -e "                          Kalscript"
echo -e "                          ______________________by Napster"
echo -e
echo -e "                          Kali Tools for web app pentest"
echo -e
echo -e "*****************************************************************************"


sudo apt-get -y update
sudo apt-get -y upgrade

echo "Installing Golang"
wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.17.2.linux-amd64.tar.gz
echo 'export GOPATH=/root/go-workspace' >> ~/.bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'PATH=$PATH:$GOROOT/bin/:$GOPATH/bin' >> ~/.bashrc
source ~/.bashrc

mkdir ~/Tools
cd ~/Tools/

echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/Tools/
echo "done"

echo "Installing knock.py"
git clone https://github.com/guelfoweb/knock.git
cd ~/Tools/
echo "done"

echo "Installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/Tools/
echo "done"

echo "Installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/Tools/massdns
make
cd ~/Tools/
echo "done"
 
echo "Installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/Tools/asnlookup
pip install -r requirements.txt
cd ~/Tools/
echo "done"

echo "Installing httprobe"
go install github.com/tomnomnom/httprobe@latest 
echo "done"

echo "Installing unfurl"
go install github.com/tomnomnom/unfurl@latest
echo "done"

echo "Installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest
echo "done"

echo "Installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"
cd ~/Tools/

echo "Installing Wfuzz"
git clone https://github.com/xmendez/wfuzz
echo "done"
cd ~/Tools/

echo "Installing ReconScript"
git clone https://github.com/ajuachu94/RECON-SCRIPS-TOOLS-TECHNIQUES
echo "done"
cd ~/Tools/

echo "Installing Assetfinder"
go install github.com/tomnomnom/assetfinder@latest
echo "done"
cd ~/Tools/


echo -e "[*]Completed Successfully!"

