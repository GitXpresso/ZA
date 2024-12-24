echo -e "Installing gnome vnc in"
echo -e "3"
echo -e "2" 
echo -e "1"
sudo apt update && sudo apt upgrade
echo -e "Installing Required Packages (tigervnc-standalone-server, tigervnc-common, tigervnc-xorg-extension, tigervnc-viewer)"
sudo apt install -y tigervnc-standalone-server tigervnc-common tigervnc-xorg-extension tigervnc-viewer

