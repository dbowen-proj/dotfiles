# herst start apps

if [ "$(hc getenv loadedapps)" != true ] ; then

    hc use System
    hc spawn mate-terminal
    sleep .5

    hc split right 0.5
    hc focus right
    hc spawn caja
    sleep .5

    hc split bottom 0.5
    hc focus down
    hc spawn caja
    sleep .5

    hc spawn firefox

    hc spawn thunderbird

    hc use Dev
    hc spawn mate-terminal
    sleep 3

fi

hc focus_monitor 2
hc use Web

hc focus_monitor 0
    hc use Comm

hc focus_monitor 1
hc use Dev

hc setenv loadedapps true

