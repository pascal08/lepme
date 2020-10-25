# Install docker-ce for debian

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iidocker-ce$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt remove -y docker docker-engine
sudo apt install -y apt-transport-https ca-certificates gnupg2 curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update
sudo apt-cache policy docker-ce
sudo apt install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER