#!/usr/bin/env bash

set -e



################################################################################
### Head: xsession
##
xsession_config_install () {

	echo "Install Xsession:"

	## install
	sudo install -m 644 "./config/xsession/lxqt-i3.desktop" "/usr/share/xsessions/lxqt-i3.desktop"
	sudo install -m 755 "./config/xsession/startlxqt-i3" "/usr/bin/startlxqt-i3"

	## check
	ls -l "/usr/share/xsessions/lxqt-i3.desktop"
	ls -l "/usr/bin/startlxqt-i3"


	xsession_config_install_lxqt_desktop_disable_source
}

xsession_config_install_lxqt_desktop_disable_source () {
	mkdir -p "$HOME/.config/lxqt-with-i3/autostart-disable"
	echo "mkdir -p $HOME/.config/lxqt-with-i3/autostart-disable"

	install -m 644 "./config/lxqt-with-i3/autostart-disable/lxqt-desktop.desktop" "$HOME/.config/lxqt-with-i3/autostart-disable/lxqt-desktop.desktop"
	echo "install -m 644 ./config/lxqt-with-i3/autostart-disable/lxqt-desktop.desktop $HOME/.config/lxqt-with-i3/autostart-disable/lxqt-desktop.desktop"
}
##
### Tail: xsession
################################################################################


################################################################################
### Head: lxqt
##
lxqt_config_install () {
	mkdir -p $HOME/.config/lxqt
	echo "mkdir -p $HOME/.config/lxqt"

	cp "./config/lxqt/globalkeyshortcuts.conf" "$HOME/.config/lxqt/globalkeyshortcuts.conf"
	echo "cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/lxqt/globalkeyshortcuts.conf"

	cp "./config/lxqt/lxqt.conf" "$HOME/.config/lxqt/lxqt.conf"
	echo "cp ./config/lxqt/lxqt.conf $HOME/.config/lxqt/lxqt.conf"

	cp "./config/lxqt/panel.conf" "$HOME/.config/lxqt/panel.conf"
	echo "cp ./config/lxqt/panel.conf $HOME/.config/lxqt/panel.conf"

	cp "./config/lxqt-with-i3/session.conf" "$HOME/.config/lxqt-with-i3/session.conf"
	echo "cp ./config/lxqt-with-i3/session.conf $HOME/.config/lxqt-with-i3/session.conf"

}
##
### Tail: lxqt
################################################################################


################################################################################
### Head: i3
##
i3_config_install () {
	mkdir -p "$HOME/.config/i3"
	echo "mkdir -p $HOME/.config/i3"

	cp "./config/i3/config" "$HOME/.config/i3/config"
	echo "cp ./config/i3/config $HOME/.config/i3/config"
}
##
### Tail: i3
################################################################################


################################################################################
### Head: compton
##
compton_config_install () {

	mkdir -p "$HOME/.config/i3/compton"
	echo "mkdir -p $HOME/.config/i3/compton"


	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	##cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/openbox/compton/compton.conf"
	##echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/openbox/compton/compton.conf"


	cp "./config/compton/compton.conf" "$HOME/.config/i3/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/i3/compton/compton.conf"


}
##
### Tail: compton
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {
	mkdir -p "$HOME/.config/pcmanfm-qt/lxqt"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/lxqt"

	cp "./config/pcmanfm-qt/lxqt/settings.conf" "$HOME/.config/pcmanfm-qt/lxqt/settings.conf"
	echo "cp ./config/pcmanfm-qt/lxqt/settings.conf $HOME/.config/pcmanfm-qt/lxqt/settings.conf"


	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp "./config/pcmanfm-qt/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"
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
	mkdir -p "$HOME/.config/sakura"
	echo "mkdir -p $HOME/.config/sakura"

	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"
	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"


	sakura_put_my_desktop_entry
}

sakura_put_my_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"
	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"

	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {
	mkdir -p "$HOME/.config/fcitx"
	echo "mkdir -p $HOME/.config/fcitx"

	cp "./config/fcitx/profile" "$HOME/.config/fcitx/profile"
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
	mkdir -p "$HOME/.config/gtk-3.0"
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp "./config/gtk3/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp "./config/gtk2/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	xsession_config_install

	lxqt_config_install

	i3_config_install

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
