# Install mariadb-client

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iimariadb-client$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt update
sudo apt install -y mariadb-client
