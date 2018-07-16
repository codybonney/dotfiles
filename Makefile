HOME_FILES=bash compton dunst git polybar rofi vim x

# target: help - Display callable targets
help:
	egrep "^# target:" Makefile

# target: install - Install all dotfiles
install:
	stow --verbose --target=${HOME} ${HOME_FILES}

# target: remove - Remove all dotfiles 
remove:
	stow --verbose --delete --target=${HOME} ${HOME_FILES}


