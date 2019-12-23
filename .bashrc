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
