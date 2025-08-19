# herbst window rules rules

hc unrule -F

hc rule focus=on # normally focus new clients
hc rule floatplacement=center

hc rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)'     floating=on
hc rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG'                      focus=on
hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off

#hc rule class=Mate-terminal  tag=System
hc rule class=Pcmanfm        tag=System
hc rule class=firefox        tag=Web
hc rule class=thunderbird    tag=Comm
hc rule class=Dev-terminal   tag=Dev


