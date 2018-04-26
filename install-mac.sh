echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing tools..."
brew install git zsh zsh-completions vim golang node yarn nmap tmux wget python python3 watch docker docker-compose docker-machine xhyve docker-machine-driver-xhyve firebase-cli heroku dockutil trash git-lfs

sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

echo "Installing Apps..."
brew cask install unrarx visual-studio-code google-chrome iterm2 alfred vlc origami-studio adobe-creative-cloud ngrok skala-color imageoptim
open /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app

echo "Setting up Vim..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

echo "Setting up the Dock..."
dockutil --remove all
dockutil --add /Applications/Safari.app
dockutil --add /Applications/Launchpad.app
dockutil --add /Applications/System\ Preferences.app

echo "Creating Docker VM..."
docker-machine create default --driver xhyve --xhyve-experimental-nfs-share
eval $(docker-machine env default)

echo "Cleaning up..."
brew cask uninstall adobe-creative-cloud
brew prune
brew cleanup
brew cask cleanup

echo "Setting up Preferences...."
curl https://raw.githubusercontent.com/Charles-Catta/Mac-Installer/master/vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/Charles-Catta/Mac-Installer/master/zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/Charles-Catta/Mac-Installer/master/iterm2Theme.json > ~/Desktop/itermProfile.json
curl https://raw.githubusercontent.com/Charles-Catta/Mac-Installer/master/gitconfig > ~/.gitconfig
curl https://raw.githubusercontent.com/Charles-Catta/Mac-Installer/master/vscodeSettings.json > ~/Library/Application\ Support/Code/User/settings.json

echo "Generating ssh key..."
ssh-keygen -t rsa -b 4096 -C "charles.catta@gmail.com"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "\n\n SSH Key copied to clipboard \n\n"
open -a "Safari" https://github.com/settings/keys

echo "Opening useful links..."
open -a "Safari" https://www.ublock.org
read -rsp $'Install uBlock and press any key to continue...\n' -n1 key

open -a "Safari" http://mac-torrents.com/?s=framer+studio
open -a "Safari" http://mac-torrents.com/?s=clean+my+mac
open -a "Safari" http://mac-torrents.com/?s=sketch
open -a "Safari" http://mac-torrents.com/?s=adobe+zii
open -a "Safari" http://peerflixy.herokuapp.com/

echo "Installing Oh My ZSH..."
curl https://raw.githubusercontent.com/powerline/fonts/master/Inconsolata/Inconsolata%20for%20Powerline.otf > ~/Library/Fonts/Inconsolata\ for\ Powerline.otf
curl https://raw.githubusercontent.com/powerline/fonts/master/Inconsolata/Inconsolata%20Bold%20for%20Powerline.ttf > ~/Library/Fonts/Inconsolata\ Bold\ for\ Powerline.ttf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
