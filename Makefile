HOME_FILES=bash bspwm compton dunst git intellij polybar rofi sxhkd vim x

# target: help - Display callable targets
help:
	egrep "^# target:" Makefile

# target: install - Install all dotfiles
install:
	stow --verbose --target=${HOME} ${HOME_FILES}

# target: remove - Remove all dotfiles 
remove:
	stow --verbose --delete --target=${HOME} ${HOME_FILES}


