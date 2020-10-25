# Install nb

if [ -e "/usr/local/bin/nb" ]; then
  exit
fi

sudo wget https://raw.github.com/xwmx/nb/master/nb -O /usr/local/bin/nb &&
sudo chmod +x /usr/local/bin/nb
sudo nb completions install
