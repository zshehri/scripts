## bash script to change the value of mac-address works on Linux & MacOS
##
## Note: mac address changes everytime when system boots, its recommended to add this line as a cron job

#!/bin/bash
sudo ifconfig en0 ether $(openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%')
