#!/bin/bash

USER_FILE="users.txt"
LOG_FILE="user_creation.log"

while read user; do
    if id "$user" &>/dev/null; then
        echo "$user already exists." >> $LOG_FILE
    else
        useradd -m -s /bin/bash "$user"
        echo "$user:Pass@123" | chpasswd
        chage -d 0 "$user"   # Force password reset
        echo "User $user created successfully." >> $LOG_FILE
    fi
done < "$USER_FILE"



𝗟𝗶𝗻𝘂𝘅 : 𝗕𝘂𝗹𝗸 𝗨𝘀𝗲𝗿 𝗖𝗿𝗲𝗮𝘁𝗶𝗼𝗻
Built a simple bash script to create multiple users in seconds 🚀
 • Reads usernames from a text file
 • Sets default passwords
 • Forces password reset at first login
 • Prevents duplicates & logs all actions

Why? - Saves manual work for sysadmins, dev teams, or training labs.

Run it in 2 steps:
chmod +x user_create.sh
sudo ./user_create.sh
