echo Installing Docker

sudo apt remove docker docker-engine docker.io containerd runc
curl https://get.docker.com | sh \
  && sudo systemctl start docker \
  && sudo systemctl enable docker

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

