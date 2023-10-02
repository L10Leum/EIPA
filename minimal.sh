#!/bin/bash
echo "Installing Chromium"
exec sudo flatpak install flathub org.chromium.Chromium
clear
echo "Installing ONLYOFFICE"
exec sudo flatpak install flathub org.onlyoffice.desktopeditors
clear
echo "Installing Telegram"
exec sudo flatpak install flathub org.telegram.desktop
clear
done