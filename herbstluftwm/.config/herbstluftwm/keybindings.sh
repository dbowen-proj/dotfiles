# herbst keybinings

Mod=Mod4   # Use the super key as the main modifier

# remove all existing keybindings
hc keyunbind --all

hc keybind $Mod-Shift-q chain , hc unsetenv loadedapps , quit
hc keybind $Mod-Shift-r reload
hc keybind $Mod-Shift-c close_and_remove

#key bindings to launch apps
hc keybind $Mod-Return spawn mate-terminal
hc keybind Mod1+Control+t chain , use Term ,  spawn mate-terminal
hc keybind Mod1+Control+w chain , use Web ,   spawn firefox
hc keybind Mod1+Control+f chain , use Files , spawn pcmanfm

# focusing clients
hc keybind $Mod-Left  focus left
hc keybind $Mod-Down  focus down
hc keybind $Mod-Up    focus up
hc keybind $Mod-Right focus right
hc keybind $Mod-h     focus left
hc keybind $Mod-j     focus down
hc keybind $Mod-k     focus up
hc keybind $Mod-l     focus right

# moving clients in tiling and floating mode
#hc keybind $Mod-Shift-Left  shift left
#hc keybind $Mod-Shift-Down  shift down
#hc keybind $Mod-Shift-Up    shift up
#hc keybind $Mod-Shift-Right shift right
#hc keybind $Mod-Shift-h     shift left
#hc keybind $Mod-Shift-j     shift down
#hc keybind $Mod-Shift-k     shift up
#hc keybind $Mod-Shift-l     shift right

# splitting frames
hc keybind $Mod-Shift-Down   chain , split   bottom  0.5 , focus down
hc keybind $Mod-Shift-Right  chain , split   right   0.5 , focus right

# resizing frames and floating clients
resizestep=0.02
hc keybind $Mod-Shift-Control-h       resize left +$resizestep
hc keybind $Mod-Shift-Control-j       resize down +$resizestep
hc keybind $Mod-Shift-Control-k       resize up +$resizestep
hc keybind $Mod-Shift-Control-l       resize right +$resizestep
hc keybind $Mod-Shift-Control-Left    resize left +$resizestep
hc keybind $Mod-Shift-Control-Down    resize down +$resizestep
hc keybind $Mod-Shift-Control-Up      resize up +$resizestep
hc keybind $Mod-Shift-Control-Right   resize right +$resizestep

# cycle through tags
hc keybind $Mod-period use_index +1 --skip-visible
hc keybind $Mod-comma  use_index -1 --skip-visible

# layouting
hc keybind $Mod-s floating toggle
hc keybind $Mod-f fullscreen toggle

# focus
hc keybind $Mod-BackSpace   cycle_monitor
hc keybind Mod1-Tab         cycle_all +1
hc keybind Mod1-Shift-Tab   cycle_all -1
hc keybind $Mod-c           cycle
hc keybind $Mod-u           jumpto urgent

# switching  monitors
hc keybind $Mod-Control-Left  focus_monitor 0
hc keybind $Mod-Control-Up    focus_monitor 1
hc keybind $Mod-Control-Right focus_monitor 2


