# Install htop

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iihtop$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt update
sudo apt install -y htop
