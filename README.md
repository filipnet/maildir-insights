# maildir-stats
Useful statistical output of Maildir user mailboxes 

Getting an overview of the usage of user mailboxes can be useful for many purposes 

- Resource planning and trend analysis 
- Introducing quotas 
- Planning and completeness checks for migrations 

to name but a few. 

I created this script to migrate a Dovecot dsync cluster node for validation after replication.

## INSTALLATION

Change to the directory you would like to install the script e.g. your root home directory ```cd ~```

Download the maildir-stats script from Git repository
```
git clone https://github.com/filipnet/maildir-stats.git
```
Give the script execution permissions
```
cd maildir-stats 
chmod +x maildir-stats.sh
```
