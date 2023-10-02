#!/bin/bash
echo "Installing Yandex"
exec sudo flatpak install flathub ru.yandex.Browser
clear 
echo "Installing Telegram"
exec sudo flatpak install flathub org.telegram.desktop
clear
echo "Installing Qbittorrent"
exec sudo flatpak install flathub org.qbittorrent.qBittorrent
clear
echo "Installing Wonderwall"
exec sudo flatpak install flathub com.ktechpit.wonderwall
clear
echo "Installing ONLYOFFICE"
exec sudo flatpak install flathub org.onlyoffice.desktopeditors
clear
echo "Installing VLC"
exec sudo flatpak install flathub org.videolan.VLC
clear
done