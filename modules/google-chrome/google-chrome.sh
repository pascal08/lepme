# Install Google Chrome

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iigoogle-chrome-stable$' | wc -l)" -eq "1" ]; then
  exit
fi

CHROME_VERSION="google-chrome-stable_current_amd64.deb"
DOWNLOAD_LOCATION=/tmp/$CHROME_VERSION
wget https://dl.google.com/linux/direct/$CHROME_VERSION -O $DOWNLOAD_LOCATION
sudo dpkg -i $DOWNLOAD_LOCATION
rm $DOWNLOAD_LOCATION
