# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '




export TERM=xterm-256color
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
eval `dircolors ~/.dir_colors/dircolors`

alias tmux="tmux -2"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias slack='slack --proxy-server=http://proxy.sle.sap.corp:8080'
alias keepassxc='~/Downloads/KeePassXC-2.3.3-x86_64.AppImage'


export HTTP_PROXY=http://proxy.sle.sap.corp:8080
export HTTPS_PROXY=http://proxy.sle.sap.corp:8080
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
NO_PROXY=$(minikube ip),$NO_PROXY
export no_proxy=$NO_PROXY
export INSECURE_REGISTRY=brslel607548.amer.global.corp.sap:5000
export KUBECONFIG=/home/i871591/br-cluster/admin.conf
export DOCKER_REGISTRY=$INSECURE_REGISTRY
export DOCKER_TAG=machado

export GOPATH=/home/i871591/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/opt/xmake/bin

source <(minikube completion bash)
source <(kubectl completion bash)
