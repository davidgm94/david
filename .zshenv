PATH=$PATH:$HOME/.cargo/bin:$HOME/scripts:$HOME/sofware:$HOME/software/clion-2020.3/bin:$HOME/software/zls:$HOME/software
alias start="xdg-open"
alias gst="git status"
alias vimf="vim \$(fzf)"

ccd ()
{
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}
