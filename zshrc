# New alias Configurations
# add IntelliJ IDEA && WebStorm License Server Configuration
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

echo "Hello Varian, I am Shelly, very happy to serve."

# Path to your oh-my-zsh installation.
export ZSH=/Users/Varian/.oh-my-zsh

# Anaconda Path
export PATH=~/anaconda3/bin:$PATH

# Path to mysql installation.
export PATH=$PATH:/usr/local/Cellar/mysql/8.0.12/bin

# 添加Maven到环境变量
export M3_HOME=/usr/local/apache-maven/apache-maven-3.6.0
export PATH=$M3_HOME/bin:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
#HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions textmate ruby autojump osx mvn gradle zsh-nvm z extract python colored-man-pages zsh-syntax-highlighting)

# add autojump config.
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias itj='/Users/Varian/Desktop/IntelliJIDEALicenseServer_darwin_amd64 -p 1337'
alias clr='clear'
alias ll='ls -l'
alias la='ls -a'
alias grep="grep --color=auto"
alias -s html='vim'   # 在命令行直接输入后缀为 html 的文件名，会在 Vim 中打开
alias -s rb='vim'     # 在命令行直接输入 ruby 文件，会在 Vim 中打开
alias -s py='vim'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js='vim'
alias -s c='vim'
alias -s java='vim'
alias -s txt='vim'
alias -s gz='tar -xzvf' # 在命令行直接输入后缀为 gz 的文件名，会自动解压打开
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias vim='mvim'
alias py='python3'
alias py2='python2.7'
alias ipy='ipython3'
alias jk='open http://127.0.0.1:4000/; jekyll serve'
alias vpn='~/.ssh/LTVPN.sh'
# squid-test
alias sqtest='py /Users/Varian/LT/LTProject/Long-term-squid/squid-test.py'
# 别名快捷设置代理
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1086"
alias unsetproxy="unset ALL_PROXY"
# 快速下载-proxychains4别名
alias x='proxychains4 -f ~/.proxychains.conf'
# 启动Aria2
alias aria='aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all --rpc-secret=varian'

# Git操作
alias gst='git status -sb'
alias ga='git add'
alias ga.='git add .'
alias gc='git commit -v'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"

# 快速创建前端文件夹脚本prep.sh
export PATH="/Users/Varian/Sony/FEDev:$PATH"

# node
# 防止安装node-sass 的时候被墙
export SASS_BINARY_SITE="https://npm.taobao.org/mirrors/node-sass"

# Python隔离环境
alias venv='virtualenv --system-site-packages -p python3.6 ./env'
alias actenv='source env/bin/activate'
alias qenv='deactivate'

# Coreutils Config
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="~/bin:$PATH"

bindkey '\e[1;3D' backward-word       # ALT+左键：向后跳一个单词
bindkey '\e[1;3C' forward-word        # ALT+右键：前跳一个单词
bindkey '\e[1;3A' beginning-of-line   # ALT+上键：跳到行首
bindkey '\e[1;3B' end-of-line         # ALT+下键：调到行尾

# Ruby Path
export PATH=/usr/local/opt/ruby/bin:$PATH

# 命令行实时预览插件
# add incr config.
# source ~/.oh-my-zsh/plugins/incr/incr*.zsh

# 全局设置代理
# export http_proxy="socks5://127.0.0.1:1088"
# export https_proxy="socks5://127.0.0.1:1088"
# export ALL_PROXY=socks5://127.0.0.1:1088

# git配置代理
# git config --global http.proxy 'socks5://127.0.0.1:1088'
# git config --global https.proxy 'socks5://127.0.0.1:1088'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
