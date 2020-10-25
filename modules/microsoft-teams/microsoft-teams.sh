# Install Microsoft Teams

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iiteams$' | wc -l)" -eq "1" ]; then
  exit
fi

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb -O /tmp/teams_1.3.00.5153_amd64.deb
sudo dpkg -i /tmp/teams_1.3.00.5153_amd64.deb
rm /tmp/teams_1.3.00.5153_amd64.deb