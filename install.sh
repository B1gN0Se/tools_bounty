#!/bin/bash

apt update

apt install golang-go make curl zip wget python3-pip net-tools pipx sublist3r jq nano python3-virtualenv git hashcat exiftool wafw00f telnet netcat-traditional whois john wordlists seclists paramspider host iputils-ping -y

wget https://raw.githubusercontent.com/B1gN0Se/BIGip-decoder/refs/heads/main/decoder.sh
chmod +x decoder.sh

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
mv /root/go/bin/subfinder /usr/bin/

go install -v github.com/tomnomnom/assetfinder@latest
mv /root/go/bin/assetfinder /usr/bin/

go install -v github.com/tomnomnom/waybackurls@latest
mv /root/go/bin/waybackurls /usr/bin/

go install -v github.com/tomnomnom/anew@latest
mv /root/go/bin/anew /usr/bin/

go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
mv /root/go/bin/chaos /usr/bin/

curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
mv findomain /usr/bin/
rm findomain-linux-i386.zip

go install github.com/d3mondev/puredns/v2@latest
mv /root/go/bin/puredns /usr/bin/

git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
make install
cd ..
rm -r massdns

go install github.com/lc/gau/v2/cmd/gau@latest
mv /root/go/bin/gau /usr/bin/

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
mv /root/go/bin/httpx /root/go/bin/httpx_bug
mv /root/go/bin/httpx_bug /usr/bin/

git clone https://github.com/thpereira1/gf-patterns.git
cd gf-patterns
chmod +x install.sh && ./install.sh
cd ..

go install github.com/hakluke/hakrawler@latest
mv /root/go/bin/hakrawler /usr/bin/

pipx install uro
pipx ensurepath

go install github.com/hahwul/dalfox/v2@latest
mv /root/go/bin/dalfox /usr/bin/

go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
mv /root/go/bin/nuclei /usr/bin/
nuclei

go install github.com/Emoe/kxss@latest
mv /root/go/bin/kxss /usr/bin/

go install -v github.com/PentestPad/subzy@latest
mv /root/go/bin/subzy /usr/bin/

pipx install git+https://github.com/xnl-h4ck3r/knoxnl.git --force
pipx ensurepath

go install github.com/ffuf/ffuf/v2@latest
mv /root/go/bin/ffuf /usr/bin/

go install github.com/xhzeem/toxicache@latest
mv /root/go/bin/toxicache /usr/bin/

go install github.com/KathanP19/Gxss@latest
mv /root/go/bin/Gxss /usr/bin/

go install github.com/bitquark/shortscan/cmd/shortscan@latest
mv /root/go/bin/shortscan /usr/bin/

git clone https://github.com/swisskyrepo/SSRFmap
cd SSRFmap
python3 -m venv ssrfmap_setup
source ssrfmap_setup/bin/activate
pip3 install -r requirements.txt
deactivate

git clone https://github.com/devanshbatham/openredirex
cd openredirex
python3 -m venv openredirex_setup
source openredirex_setup/bin/activate
pip install aiohttp tqdm
sudo chmod +x setup.sh
./setup.sh
cd ..
rm -r openredirex
deactivate

git clone https://github.com/vladko312/SSTImap.git
cd SSTImap
python3 -m venv sstimap_setup
source sstimap_setup/bin/activate
pip3 install -r requirements.txt
pip3 install mechanize
cd ..
deactivate

git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
mv sqlmap-dev/ ~

go install github.com/tomnomnom/qsreplace@latest
mv /root/go/bin/qsreplace /usr/bin/

go install github.com/ferreiraklet/airixss@latest
mv /root/go/bin/airixss /usr/bin/

go install github.com/tomnomnom/httprobe@latest
mv /root/go/bin/httprobe /usr/bin/

git clone https://github.com/r0oth3x49/ghauri.git
cd ghauri
python3 -m venv ghauri_setup
source ghauri_setup/bin/activate
python3 -m pip install --upgrade -r requirements.txt
pip3 install setuptools
python3 setup.py install
cd ..
deactivate

git clone https://github.com/r0075h3ll/Oralyzer.git
cd Oralyzer
python3 -m venv oralyzer_setup
source oralyzer_setup/bin/activate
pip3 install -r requirements.txt
deactivate
cd ..

git clone https://github.com/B1gN0Se/priv_templates.git
mv priv_templates/ ~

pipx install arjun
