#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Fix window manager quirk with some java programs
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING=1

export XCURSOR_THEME=Capitaine
export XCURSOR_SIZE=24


# Fix font rendering with some java programs
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

# alias for managing dotfiles with git
alias config='/usr/bin/git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
