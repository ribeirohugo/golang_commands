# Update apt repository
sudo apt update

# Install Go package
sudo apt-get --yes install go

# Move to destination file
cd /usr/local

# Download Go installation
sudo curl -OL https://go.dev/dl/go1.18.linux-amd64.tar.gz

# Uncompress files
tar -C /usr/local -xvf go1.18.linux-amd64.tar.gz
