function ls
    command ls --color=auto $argv
end

function start
    command xdg-open $argv
end

function gst
    command git status
end

function ssh
    command kitty +kitten ssh $argv
end

function cdir
    command mkdir $argv && cd $argv
end

set GIT_DIR "$HOME/git"
set PROGRAMS_DIR "$HOME/programs"
set HOMEBREW_BIN_DIR "/home/linuxbrew/.linuxbrew/bin"
set MAC_HOMEBREW_BIN_DIR "/opt/homebrew/bin"
set ZIG_DIR "$PROGRAMS_DIR/zig-master"
set PATH "$PATH:$HOMEBREW_BIN_DIR:$HOME/.cargo/bin:$PROGRAMS_DIR:$GIT_DIR/zls/zig-out/bin:$GIT_DIR/gf:$ZIG_DIR:$MAC_HOMEBREW_BIN_DIR"

