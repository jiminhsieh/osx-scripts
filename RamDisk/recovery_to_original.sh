# 1. Remove Caches to RAM Disk
unlink ~/Library/Caches
mkdir ~/Library/Caches

# 2. Remove RAM Disk
sudo rm /Library/Scripts/RamDisk.sh
sudo rm /Library/Scripts/RamDiskCheck.sh
user=$(echo "$USER")
rm ~/Library/LaunchAgents/$user.RamDisk.startup.plist

sudo umount /Volumes/RamDisk/
