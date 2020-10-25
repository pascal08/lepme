# Install notify-osd

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iinotify-osd$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt update
sudo apt install -y notify-osd
