# 1. Create RAM Disk
printf 'How much ramdisk size[MB] you want assign(Default 1024MB)?'
read -r size

if [ "$size" != "" ]; then
   new_size=$(($size*2048))
   sed -i '' "s/2097152/$new_size/g" RamDisk.sh
fi

sudo cp RamDisk.sh /Library/Scripts
sudo cp RamDiskCheck.sh /Library/Scripts

user=$(echo "$USER")

cat RamDisk.startup.txt > ~/Library/LaunchAgents/$user.RamDisk.startup.plist

sed -i '' "s/com.RamDisk.startup/$user.RamDisk.startup/g" ~/Library/LaunchAgents/$user.RamDisk.startup.plist

# 2. Caches to RAM Disk
sudo rm -r ~/Library/Caches

ln -s /Volumes/RamDisk/ ~/Library/Caches

# 3. Logout 
osascript -e 'tell app "System Events" to log out’
