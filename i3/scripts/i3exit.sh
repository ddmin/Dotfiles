#!/bin/sh
# Date    : 21/07/2017
# Version : v2.0.1

lock() {
    i3lock -c AFEEEE
    # i3lock -i /usr/share/pixmaps/woods.jpg -t
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        dm-tool switch-to-greeter
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
