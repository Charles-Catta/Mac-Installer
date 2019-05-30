# Path to your oh-my-zsh installation.
export ZSH=/Users/charlesc/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  github
  docker
  npm
  osx
  web-search  
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/zsh-git-prompt/zshrc.sh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-helm-completions/zsh-helm-completions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)


# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set Environment variables
export GOPATH="/Users/charlesc/Developer/go"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_HOME="/Users/charlesc/Library/Android/sdk"
export PATH="/usr/local/Cellar/openvpn/2.4.6/sbin:$PATH"
export PATH="/Users/charlesc/Library/Python/3.6/bin:$PATH"
export PATH="/Users/charlesc/.gem/ruby/2.3.0/bin:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
cd() { builtin cd "$@"; ls; }
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias zshconfig="code ~/.zshrc"
alias rm='echo "You should use the trash command to delete stuff\n" && rm -i'
alias torrent='aria2c'
export PATH="/usr/local/sbin:$PATH"
PATH=/usr/local/sbin:/usr/local/Cellar/openvpn/2.4.6/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/Cellar/openvpn/2.4.6/sbin:/Users/charlesc/Developer/go/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
