#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function pet-select() {
  BUFFER=$(pet search --query "$READLINE_LINE" --color)
  READLINE_LINE=$BUFFER
  READLINE_POINT=${#BUFFER}
}
bind -x '"\C-x\C-r": pet-select'

# Fix window manager quirk with some java programs
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING=1

export XCURSOR_THEME=Capitaine
export XCURSOR_SIZE=24

# Fix font rendering with some java programs
# Use opengl to imrpove 2d performance
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.opengl=true'

export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=vim

alias ls='ls --color=auto'

CDPATH=:/home/cody/projects/repoman/repositories/:/home/cody/projects/spotx

# Set PATH to include Spocker Scripts
if [ -d /home/cody/projects/spotx/spocker/bin ] ; then
    export PATH=$PATH:/home/cody/projects/spotx/spocker/bin
fi

source ~/.bash_prompt
