#!/bin/bash

# Input parameters: account number, transaction type, and amount
account_number=$1
transaction_type=$2
amount=$3

# Get the current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")


if [[ "$transaction_type" == "withdraw" ]] && [[ $amount -gt 50000 ]]; then
    echo "ALERT:High-value transaction detected! Withdrawal: $amount"
fi

log_entry="$timestamp\n|Account: $account_number\n |$transaction_type :$amount\n\n"

# Log the transaction in transaction_log.txt
echo -e "$log_entry" >>transaction_log.txt

# Check if the transaction is a high-value withdrawal
#todo
