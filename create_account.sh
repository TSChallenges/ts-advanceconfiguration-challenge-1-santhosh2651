#!/bin/bash

# Input parameters: username and account number
username=$1
account_number=$2

# Default balance for new accounts

sudo useradd -m -s /bin/bash "$username"

account_entry="Username: $username\n| Account: $account_number\n |Balance: 1000\n"
echo -e "$account_entry" >> accounts.txt

# Check if account already exists in accounts.txt
#todo

# Add the new account to accounts.txt
#todo

# Create the user in the system (if running in a real Linux environment)
#todo

