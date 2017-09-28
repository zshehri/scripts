# Verify debian/ubuntu packages integrity.
# install debsums on Kali

dpkg -l | awk '$1 == "ii" {print $2}' | xargs sudo debsums | sed '/ OK$/d'
