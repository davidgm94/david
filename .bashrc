#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.cargo/bin:$HOME/scripts:$HOME/programs:$HOME/programs/clion-2020.3/bin:$HOME/programs/zls:$HOME/programs/zig-master
alias start="xdg-open"
alias gst="git status"
