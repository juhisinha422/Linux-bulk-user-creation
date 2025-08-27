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
