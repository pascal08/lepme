# Install Starlabs theme

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iistarlabstheme$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo add-apt-repository -y ppa:starlabs/ppa
sudo apt update
sudo apt install -y starlabstheme
