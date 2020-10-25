# Install rofi

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iirofi$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt update
sudo apt install -y rofi
