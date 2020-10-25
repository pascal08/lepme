# Install Slack

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iislack-desktop$' | wc -l)" -eq "1" ]; then
  exit
fi

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.10.0-amd64.deb -O /tmp/slack-desktop-4.10.0-amd64.deb
sudo dpkg -i /tmp/slack-desktop-4.10.0-amd64.deb
rm /tmp/slack-desktop-4.10.0-amd64.deb