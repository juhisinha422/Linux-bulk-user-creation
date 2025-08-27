# 🔹 Bulk User Creation Script

Simple bash automation for creating multiple Linux users with security features and logging.

## ✨ Features

• **Bulk Creation** - Multiple users from text file  
• **Auto Password** - Secure default password assigned  
• **Force Reset** - Users change password at first login  
• **Audit Log** - Every action logged  
• **Duplicate Check** - Prevents existing user conflicts  

## 📁 Files

```
├── user_create.sh      # Main script
├── users.txt          # Username list
├── user_creation.log   # Generated log
└── README.md          # Documentation
```

## 🚀 Quick Start

```bash
# Make executable
chmod +x user_create.sh

# Add usernames (one per line)
echo -e "alice\nbob\ncharlie" > users.txt

# Run script
sudo ./user_create.sh

# Check results
cat user_creation.log
```

## 🔐 Security

• Default password: `Pass@123`  
• Forced password change on first login  
• Home directories with proper permissions  
• Complete audit trail  

## 📋 Requirements

• Linux with bash  
• Root/sudo access  
• Standard user management tools  

---

**Perfect for system administration and DevOps portfolios!** 🚀
