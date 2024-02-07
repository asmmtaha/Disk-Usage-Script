# Disk Usage Script

This Bash script provides a simple way to check and display disk usage for specified directories.

## Usage

The script takes one or more directories as arguments and displays disk usage information.

```bash
./disk_usage.sh [-a -n N] directory...
```

## Example Usages
Display disk usage for the "/etc" directory:

```bash
# Run on /etc
$ ./disk_usage.sh /etc
15M     /etc/
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
1.8M    /etc/ca-certificates/extracted
1.8M    /etc/ca-certificates
1.1M    /etc/pacman.d/gnupg
1.1M    /etc/pacman.d
780K    /etc/ca-certificates/extracted/cadir
340K    /etc/ssh
```
Display disk usage for the "/etc" directory, showing the top 5 entries:
```bash
# Run on /etc (limit output to top 5)
$ ./disk_usage.sh -n 5 /etc
15M     /etc
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
1.8M    /etc/ca-certificates/extracted
