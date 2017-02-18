#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

_JAVA_AWT_WM_NONREPARENTING=1
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

export _JAVA_AWT_WM_NONREPARENTING=1

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
