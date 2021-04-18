PATH=$PATH:$HOME/.cargo/bin:$HOME/scripts:$HOME/programs:$HOME/programs/clion-2020.3/bin:$HOME/programs/zls:$HOME/programs/zig-master
alias start="xdg-open"
alias gst="git status"
alias vimf="vim \$(fzf)"
alias xbpsi="sudo xbps-install -S"
alias xbpss="sudo xbps-query -Rs"

ccd ()
{
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
source "$HOME/.cargo/env"
