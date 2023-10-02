#!/bin/bash
echo "Installing RetroArch"
exec sudo flatpak install flathub org.libretro.RetroArch
clear
echo "Installing RPCS3"
exec sudo flatpak install flathub net.rpcs3.RPCS3
clear
echo "Installing PCSX2"
exec sudo flatpak install flathub net.pcsx2.PCSX2
clear
echo "Installing Dolphin Emulator"
exec sudo flatpak install flathub org.DolphinEmu.dolphin-emu
clear
echo "Installing Steam"
exec sudo flatpak install flathub com.valvesoftware.Steam
clear
done