echo "Script isnt fully automatic just need to setup the keyboard layout in gnome installation"
echo -e "Installing gnome vnc in"
echo -e "3"
echo -e "2" 
echo -e "1"
sudo apt -y update && sudo apt -y upgrade
echo -e "Installing Required Packages (tigervnc-standalone-server, tigervnc-common, tigervnc-xorg-extension, tigervnc-viewer)"
sudo apt install -y tigervnc-standalone-server tigervnc-common tigervnc-xorg-extension tigervnc-viewer
echo -e "Installing (gnome-session and gnome-terminal)"
sudo apt install -y gnome-session gnome-terminal
tigervncserver -xstartup /usr/bin/gnome-session -SecurityTypes VncAuth,TLSVnc -geometry 800x600 -localhost no :1
