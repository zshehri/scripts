## init Linux cloud server
## Not executable yet! read each line and change it as you like

adduser another_admin

usermod -aG sudo another_admin

ssh-keygen

// copy SSH key from your machine

ssh-copy-id another_admin@your_server_ip

// or you can ' $cat ~/.ssh/id_rsa.pub '

su - another_admin
mkdir ~/.ssh
chmod 700 ~/.ssh
nano ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
exit

// Disable password authentication

sudo nano /etc/ssh/sshd_config

// Uncomment -if needed- and set the following
PasswordAuthentication no

PubkeyAuthentication yes
ChallengeResponseAuthentication no

// Reload SSH deamon:
sudo systemctl reload sshd

ssh another_admin@your_server_ip

// Set firewall
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status
sudo ufw allow 8000 (or any custom port you like)
