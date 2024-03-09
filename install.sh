#!/bin/bash

apt update

apt install golang-go make curl zip wget python3-pip net-tools pipx sublist3r jq nano -y

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

go install github.com/projectdiscovery/katana/cmd/katana@latest
mv /root/go/bin/katana /usr/bin/

pip3 install uro

go install github.com/hahwul/dalfox/v2@latest
mv /root/go/bin/dalfox /usr/bin/

go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
mv /root/go/bin/nuclei /usr/bin/
nuclei

go install github.com/Emoe/kxss@latest
mv /root/go/bin/kxss /usr/bin/

go install -v github.com/LukaSikic/subzy@latest
mv /root/go/bin/subzy /usr/bin/

pipx install git+https://github.com/xnl-h4ck3r/knoxnl.git
pipx ensurepath
