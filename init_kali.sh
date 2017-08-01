## TODO

## Create bootable usb with kali
diskutil umountDisk /dev/disk2
sudo dd if=/dir/to/kali-linux-2017.1-amd64.iso of=/dev/disk2 bs=512k

## Create anther admin, disable root (TODO)
adduser newuser
adduser toruser

## Make sure to have connectivity
nano /etc/NetworkManager/NetworkManager.conf
# change manage=true
service network-manager restart

## Update Kali
sudo apt-get update -y && sudo apt-get upgrade -y

## install virtualization tools if needed

## install TOR & vpn stuff
apt-get instal tor network-manager-openvpn-gnome network-manager-pptp network-manager-vpnc network-manager-vpnc-gnome -y
# sign out/in with toruser
# download tor browser from torproject

nano /etc/resolve.conf
# add safe DNS server (i.e. OpenDNS)

## MacChanger as a cron
crontab -e
# add this line
@reboot macchanger -r eth0
