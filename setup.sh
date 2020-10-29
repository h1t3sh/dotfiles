#!/bin/bash
sudo apt -y update
sudo apt install -y jq
sudo apt install -y git

# install go
if [[ -z "$GOPATH" ]]; then
        echo "It looks like go is not installed, would you like to install it now"
        PS3="Please select an option: "
        choices=("yes" "no")
        select choice in "${choices[@]}";do
                case $choice in
                        yes)
                                echo "You selecected to install go"
                                #wget https://dl.google.com/go/go1.15.3.linux-amd64.tar.gz
                                sudo tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
                                export GOROOT=/usr/local/go
                                export GOPATH=$HOME/go
                                export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
                                echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
                                echo 'export GOPATH=$HOME/go' >> ~/.bash_profile
                                echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
                                source ~/.bash_profile
                                break
                                ;;
                        no)
                                echo "You don't want to install go"
                                echo "Aborting installation..."
                                exit 1
                                ;;
                esac
        done
fi
echo "Reached End of script. Exiting.."

## set up tmux
echo "Setting up tmux and vim "
#git clone --single-branch --branch cloud https://github.com/h1t3sh/dotfiles.git
cp ~/dotfiles/tmux_cloud.conf ~/.tmux.conf
cp ~/dotfiles/vim_cloud.conf ~/.vimrc
echo "done"

# create a tools folder
mkdir ~/tools
cd ~/tools

echo "Installing httprobe"
go get -u github.com/tomnomnom/httprobe
echo "Done"

echo "Installing ffuf"
go get -u github.com/ffuf/ffuf
echo "Done"

echo "Installing gospider"
go get -u github.com/jaeles-project/gospider
echo "Done"

