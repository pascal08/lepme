# Install nodejs v12

if [ "$(sudo dpkg -l | awk '{print $1$2$3}' | grep -E '^iinodejs12.*$' | wc -l)" -eq "1" ]; then
  exit
fi

wget https://deb.nodesource.com/setup_12.x -O /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install -y nodejs
rm /tmp/nodesource_setup.sh
