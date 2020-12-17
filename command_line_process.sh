# Command line process
mkdir GitHubPages_GatsbyProject
cd GitHubPages_GatsbyProject

# Update Ubuntu
sudo apt update
sudo apt upgrade

# We need curl to install Node Version Manager
sudo apt install curl

# Download nvm installation bash script and execute it
stdout='-'  # This alias is used by curl
curl --output $stdout https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

nvm --version  # Confirm this has worked 

# Install Node.js using the latest long term support (lts) version
nvm install --lts
nvm use --lts

npm --version  # Confirm this has worked
node --version

# Install Git
sudo apt install git

git --version  # Confirm this has worked

git config --global user.name "YourUserName"
git config --global user.email "YourEmailAdress"

# Install Gatsby CLI
npm install --global gatsby-cli  # Ignore warnings??

# Create a Gatsby site
gatsby new hello-world https://github.com/gatsbyjs/gatsby-starter-hello-world  # This will take a while

# Start development server
cd hello-world
gatsby develop
