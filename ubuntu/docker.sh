echo Installing Docker

sudo apt remove docker docker-engine docker.io containerd runc
curl https://get.docker.com | sh \
  && sudo systemctl start docker \
  && sudo systemctl enable docker

#distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
#   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
#   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt update
sudo apt-get install -y nvidia-container-toolkit
#sudo apt-get install -y nvidia-docker2
sudo usermod -aG docker $USER
sudo systemctl restart docker

