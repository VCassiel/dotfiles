#!/usr/bin/env bash
#----------------------------
#   POLYBAR :: COLORSWITCHER
#----------------------------

# :: Functions

cfgfile=""

changeclr(){
    active_color=$(cat $cfgfile | grep '.config/colors' | cut -f 4 -d/)
    colorline=$(cat $cfgfile | grep -n '.config/colors' | cut -f 1 -d:)
    if [[ $active_color != $1 ]]
    then
        sed -i "${colorline}s/${active_color}/$1/" $cfgfile
    fi
}

changeclr_nvim(){
    active_color=$(cat $cfgfile | grep 'colorscheme' | cut -f 2 -d" ")
    colorline=$(cat $cfgfile | grep -n 'colorscheme' | cut -f 1 -d:)
    if [[ $active_color != $1 ]]
    then
        sed -i "${colorline}s/${active_color}/$1/" $cfgfile
    fi
}

changeclr_xres(){
    active_color=$(cat $cfgfile | grep 'xresources' | cut -f 2 -d/)
    colorline=$(cat $cfgfile | grep -n 'xresources' | cut -f 1 -d:)
    if [[ $active_color != $1 ]]
    then
        sed -i "${colorline}s/${active_color}/$1/" $cfgfile
    fi
}

changeclr_gtk(){
    active_color=$(cat $cfgfile | grep 'gtk-theme' | cut -f 4 -d-)
    colorline=$(cat $cfgfile | grep -n 'gtk-theme' | cut -f 1 -d:)
    if [[ $active_color != $(perl -ne 'print ucfirst' <<< $1) ]]
    then
        sed -i "${colorline}s/${active_color}/$(perl -ne 'print ucfirst' <<< $1)/" $cfgfile
    fi
}

changeclr_dunst(){
    xrescol=$HOME/.config/colors/$1/xresources
    curBG=$(cat $cfgfile | grep background | head -1 | cut -f 2 -d\")
    curFG=$(cat $cfgfile | grep foreground | head -1 | cut -f 2 -d\")
    curHL=$(cat $cfgfile | grep highlight | head -1 | cut -f 2 -d\")
    xBG=$(cat $xrescol | grep BG | cut -f 3 -d' ')
    xFG=$(cat $xrescol | grep FG | cut -f 3 -d' ')
    xWHI=$(cat $xrescol | grep WHI | cut -f 3 -d' ')
    sed -i "s/${curBG}/${xBG}e6/g" $cfgfile
    sed -i "s/${curFG}/${xFG}/g" $cfgfile
    sed -i "s/${curHL}/${xWHI}/g" $cfgfile
}

colorswitch(){
    # bspwm switching
    unset cfgfile
    cfgfile="$HOME/.config/bspwm/bspwmrc"
    changeclr $1

    # polybar switching
    unset cfgfile # ---- polywins
    cfgfile="$HOME/.config/polybar/scripts/polywins.sh"
    changeclr $1

    unset cfgfile # ---- main bar
    cfgfile="$HOME/.config/polybar/config.ini"
    changeclr $1

    # rofi switching
    unset cfgfile # ---- main launcher
    cfgfile="$HOME/.config/rofi/config.rasi"
    changeclr $1

    unset cfgfile # ---- powermenu/color switcher
    cfgfile="$HOME/.config/rofi/barmenu.rasi"
    changeclr $1

    unset cfgfile # ---- window switcher
    cfgfile="$HOME/.config/rofi/winswitcher.rasi"
    changeclr $1

    # kitty switching
    unset cfgfile
    cfgfile="$HOME/.config/kitty/kitty.conf"
    changeclr $1

    # xresources switching
    unset cfgfile
    cfgfile="$HOME/.Xresources"
    changeclr_xres $1

    # nvim switching
    unset cfgfile
    cfgfile="$HOME/.config/nvim/init.vim"
    changeclr_nvim $1

    # gtk theme switching
    unset cfgfile
    cfgfile="$HOME/.config/gtk-3.0/settings.ini"
    changeclr_gtk $1

    # dunst switching
    unset cfgfile
    cfgfile="$HOME/.config/dunst/dunstrc"
    changeclr_dunst $1

    # refresh
    unset cfgfile
    xrdb -I$HOME/.config $HOME/.Xresources # ---- xresources recompile
    $HOME/.config/colors/$1/bspwm # ---- bspwm color re-set
    killall -s SIGUSR1 kitty # ---- kitty reload
    pkill dunst # ---- dunst restart
    sleep 2 && dunstify -a Theme "Colorscheme" "Changed to $(perl -ne 'print ucfirst' <<< $1)"
}

# :: Main

dir="$HOME/.config/rofi"
rofi_command="rofi -theme $dir/barmenu.rasi"

vinifera=""
edelweiss=""
rust=""
spice=""

options="$vinifera\n$edelweiss\n$rust\n$spice"

chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
    $vinifera)
        colorswitch vinifera
        ;;
    $edelweiss)
        dunstify -a Theme "Error" "Colorscheme is WIP"
        #colorswitch edelweiss
        ;;
    $rust)
        dunstify -a Theme "Error" "Colorscheme is WIP"
        #colorswitch "rust"
        ;;
    $spice)
        colorswitch spice
        ;;
esac
