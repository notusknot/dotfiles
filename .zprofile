if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx "/home/gabriel/.config/xinitrc"
fi

export ZDOTDIR="/home/gabriel/.config/zshrc"

export PATH=/usr/sbin:$PATH
export PATH=/home/gabriel/.cargo/bin:$PATH

LESSHISTFILE=-


