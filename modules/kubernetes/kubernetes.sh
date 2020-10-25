# Install kubernetes

if [ "$(sudo dpkg -l | awk '{print $1$2}' | grep -E '^iikubeadm$' | wc -l)" -eq "1" ]; then
  exit
fi

sudo apt update
sudo apt install apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install -y kubeadm kubelet kubectl kubernetes-cni
