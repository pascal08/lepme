# Install discord

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iUdiscord$' | wc -l)" -eq "1" ]; then
  exit
fi

wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb
sudo rm /tmp/discord.deb
