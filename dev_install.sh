#!/bin/bash

# get the version number from the VERSION file
version=$(./version.sh -v)

echo "$(tput setaf 2)
888b     d888                                     888 d8b                      d8888 8888888b. 8888888      
8888b   d8888                                     888 Y8P                     d88888 888   Y88b  888        
88888b.d88888                                     888                        d88P888 888    888  888        
888Y88888P888  8888b.   .d88b.  88888b.   .d88b.  888 888  8888b.           d88P 888 888   d88P  888        
888 Y888P 888     \"88b d88P\"88b 888 \"88b d88\"\"88b 888 888     \"88b         d88P  888 8888888P\"   888        
888  Y8P  888 .d888888 888  888 888  888 888  888 888 888 .d888888        d88P   888 888         888        
888   \"   888 888  888 Y88b 888 888  888 Y88..88P 888 888 888  888       d8888888888 888         888        
888       888 \"Y888888  \"Y88888 888  888  \"Y88P\"  888 888 \"Y888888      d88P     888 888       8888888      
                            888                                                        $(tput setaf 4)Version $version$(tput setaf 2)                      
                       Y8b d88P                                                                             
                        \"Y88P\"                                                                              
$(tput sgr0)"

echo "$(tput setaf 2)Dev Install Script$(tput sgr0)"

echo "First Step:\n Use this documentation to create a github token and login to npm: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-npm-registry"
echo "This is a required first step."
echo "Once you have created a token use npm login --scope=@vitality-south --registry=https://npm.pkg.github.com"
echo "with your github username and the token you created."

while true; do
    read -p "Have you completed this step?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "$(tput setaf 2)Installing dependencies$(tput sgr0)"

# install dependencies

cd browser-lib
npm install
cd ..

cd npm-lib
npm install
cd ..

cd SPA-Example
npm install
cd ..

echo "$(tput setaf 2)All Done$(tput sgr0)"