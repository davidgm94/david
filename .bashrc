#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# WTF is this?
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.cargo/bin:$HOME/scripts:$HOME/programs:$HOME/programs/clion-2020.3/bin:$HOME/programs/zls:$HOME/programs/zig-master:$HOME/git/compiler/zig-cache/bin:/opt/intel/oneapi/vtune/latest/bin64
alias ls='ls --color=auto -a1'
alias start="xdg-open"
alias gst="git status"
alias ssh="kitty +kitten ssh"
alias cdcomp="cd $HOME/git/compiler"
alias work="cdcomp && nvim"
