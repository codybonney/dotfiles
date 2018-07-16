includes=/etc/X11/xinit/xinitrc.d
if [ -d "$includes" ]
then
for f in "$includes/"*
do
[ -x "$f" ] && . "$f"
done
unset f
fi
unset includes


eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xset -b &
xrdb -merge ~/.Xresources &
sxhkd -f 100 &
xsetroot -cursor_name left_ptr &

# disable touchpad tap-to-click and scrolling while typing
syndaemon sudo syndaemon -t -i 0.3 -R -d &

exec bspwm
