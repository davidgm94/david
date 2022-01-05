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

set MYHOME "/home/david"

set GIT_DIR "$MYHOME/git"
set PROGRAMS_DIR "$MYHOME/programs"
set HOMEBREW_BIN_DIR "/home/linuxbrew/.linuxbrew/bin"
set PATH "$PATH:$HOMEBREW_BIN_DIR:$MYHOME/.cargo/bin:$MYHOME/scripts:$PROGRAMS_DIR:$PROGRAMS_DIR/clion-2020.3/bin:$PROGRAMS_DIR/zls:$PROGRAMS_DIR/zig-master:$PROGRAMS_DIRiler/zig-cache/bin:/opt/intel/oneapi/vtune/latest/bin64:$PROGRAMS_DIR/shaderc/bin:$PROGRAMS_DIR/vk-zig-gen:$PROGRAMS_DIR/gyro-0.3.0/bin:$GIT_DIR/zls/zig-out/bin"

set ZIG_DIR "$PROGRAMS_DIR/zig-master"
