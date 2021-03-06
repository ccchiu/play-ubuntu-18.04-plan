#!/usr/bin/env bash

set -e


################################################################################
### Head: pekwm
##
pekwm_config_install () {

	mkdir -p "$HOME/.pekwm"
	echo "mkdir -p $HOME/.pekwm"
	
	#mkdir -p "$HOME/.pekwm/themes"
	#echo "mkdir -p $HOME/.pekwm/themes"

	cp "./config/pekwm/autoproperties" "$HOME/.pekwm/autoproperties"
	echo "cp ./config/pekwm/autoproperties $HOME/.pekwm/autoproperties"

	cp "./config/pekwm/config" "$HOME/.pekwm/config"
	echo "cp ./config/pekwm/config $HOME/.pekwm/config"

	cp "./config/pekwm/keys" "$HOME/.pekwm/keys"
	echo "cp ./config/pekwm/keys $HOME/.pekwm/keys"

	cp "./config/pekwm/menu" "$HOME/.pekwm/menu"
	echo "cp ./config/pekwm/menu $HOME/.pekwm/menu"

	cp "./config/pekwm/mouse" "$HOME/.pekwm/mouse"
	echo "cp ./config/pekwm/mouse $HOME/.pekwm/mouse"

	cp "./config/pekwm/start" "$HOME/.pekwm/start"
	echo "cp ./config/pekwm/start $HOME/.pekwm/start"

	cp "./config/pekwm/vars" "$HOME/.pekwm/vars"
	echo "cp ./config/pekwm/vars $HOME/.pekwm/vars"


	pekwm_config_install_theme_dust_fix

}

pekwm_config_install_theme_dust_fix () {

	mkdir -p "$HOME/.pekwm/themes"
	echo "mkdir -p $HOME/.pekwm/themes"

	cp -r -f "./config/pekwm/themes/dust-fix" "$HOME/.pekwm/themes/dust-fix"
	echo "cp -r -f ./config/pekwm/themes/dust-fix $HOME/.pekwm/themes/dust-fix"

}
##
### Tail: pekwm
################################################################################


################################################################################
### Head: xresources
##

xresources_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/xresources/xresources-load.sh $HOME/bin/xresources-load.sh"
	install -m 755 "./config/xresources/xresources-load.sh" "$HOME/bin/xresources-load.sh"

}

##
### Tail: xresources
################################################################################


################################################################################
### Head: wallpaper
##
wallpaper_config_install () {

	mkdir -p "$HOME/bin"
	echo "mkdir -p $HOME/bin/"

	cp "./config/wallpaper/wallpaper.sh" "$HOME/bin/wallpaper.sh"
	echo "cp ./config/wallpaper/wallpaper.sh $HOME/bin/wallpaper.sh"


}
##
### Tail: wallpaper
################################################################################


################################################################################
### Head: tint2
##
tint2_config_install () {

	mkdir -p "$HOME/.pekwm/tint2"
	echo "mkdir -p $HOME/.pekwm/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.pekwm/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.pekwm/tint2/tint2rc"

}

tint2_config_install_default () {

	mkdir -p "$HOME/.config/tint2"
	echo "mkdir -p $HOME/.config/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/tint2/tint2rc"

}
##
### Tail: tint2
################################################################################


################################################################################
### Head: volumeicon
##
volumeicon_config_install () {

	mkdir -p "$HOME/.config/volumeicon"
	echo "mkdir -p $HOME/.config/volumeicon"

	cp ./config/volumeicon/volumeicon "$HOME/.config/volumeicon/volumeicon"
	echo "cp ./config/volumeicon/volumeicon $HOME/.config/volumeicon/volumeicon"

}
##
### Tail: volumeicon
################################################################################


################################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.pekwm/compton"
	echo "mkdir -p $HOME/.pekwm/compton"

	##cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.pekwm/compton/compton.conf"
	##echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.pekwm/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.pekwm/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.pekwm/compton/compton.conf"

}
##
### Tail: compton
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {
	mkdir -p "$HOME/.config/rofi"
	echo "mkdir -p $HOME/.config/rofi"

	cp "./config/rofi/config" "$HOME/.config/rofi/config"
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"

	rofi_put_app_desktop_entry
}

rofi_put_app_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"
	echo "cp ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"

	cp "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"
	echo "cp ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"

	cp "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"
	echo "cp ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {

	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	sakura_put_my_desktop_entry

}

sakura_put_my_desktop_entry () {

	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"

}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	pekwm_config_install

	xresources_config_install

	wallpaper_config_install

	tint2_config_install

	volumeicon_config_install

	compton_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
