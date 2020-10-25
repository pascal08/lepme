# Install Visual Studio Code

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iicode$' | wc -l)" -eq "1" ]; then
  exit
fi

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code