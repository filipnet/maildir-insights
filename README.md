![Maildir Required](https://img.shields.io/badge/Maildir-Required-blue)
![Dovecot Compatible](https://img.shields.io/badge/Dovecot-Compatible-orange)
![Dependencies None](https://img.shields.io/badge/Dependencies-None-brightgreen)

# Maildir Insights

<img src="images/logo-maildir-insights.png" alt="Logo Maildir Insights" width="270" align="right" hspace="30" vspace="20"/>
Maildir Insights provides concise and useful statistics for Maildir user mailboxes.

Gaining an overview of mailbox usage is valuable for several key purposes:

- Resource planning and usage trend analysis
- Implementing and managing quotas
- Migration planning and validation

## Features

The script outputs a comprehensive table summarizing each mailbox with the following details:

- Total size (including all subdirectories)
- Total message count
- Number of messages in New folder
- Number of messages in Cur folder
- Number of messages in Tmp folder
- Count of subdirectories within the mailbox
- Number of read emails
- Number of unread emails
- Number of deleted emails (in the recycle bin)

## Example Output

```plaintext
Mailbox           Size    Total  New  Cur  Tmp  Subs  Read  Unread  Deleted
--------------------------------------------------------------------------------
user1/Inbox      234M    1200   150  1040 10   3     1100  100     50
user1/Sent       56M     300    0    300  0    0     295   5       0
user2/Inbox      120M    600    50   540  10   2     500   100     20
user2/Trash      10M     100    0    90   10   0     50    40      10
--------------------------------------------------------------------------------
```

## Installation

Navigate to the directory where you want to install the script, for example:

```bash
cd ~
```

Clone the repository:

```bash
git clone https://github.com/filipnet/maildir-insights.git
```

Change into the cloned directory and make the script executable:

```bash
cd maildir-insights
chmod +x maildir-stats.sh
```

## Usage

Run the script from the terminal to output mailbox statistics in a readable table format:

```bash
./maildir-stats.sh /path/to/maildir
```

## Contribution

Contributions, bug reports, and feature requests are welcome! Please feel free to open issues or submit pull requests to improve maildir-insights.

## License

This project is licensed under the BSD 3-Clause License unless otherwise noted. Please refer to the [LICENSE](LICENSE) file for details.
