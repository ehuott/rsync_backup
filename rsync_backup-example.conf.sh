#
# rsync_backup Configuration file
#
# This file is sourced by the rsync_backup script to set its configuration.
#

#
# Backup Destination
#
# Backup destination directory root. Subdirectories for each named host
# to be backed up will be created under this directory.
#
BACKUPDIR=/path/to/backup/directory

# Max number of backups to retain
MAX_BACKUPS=14

# Rsync options to apply globally
# Example:
# GLOBAL_RSYNC_OPTS="--exclude=.gvfs/ --exclude=NOBACKUP/"
GLOBAL_RSYNC_OPTS=""

#
# Backup Sources
#
# List of network resources (directories) to be backed up with any extra
# associated rsync options. List is an associative array where the key
# is the backup source and the value is a string containing extra options
# that will be passed to the rsync command to do the backup. The format of
# the key is:
#
# host:directory
#
# where 'directory' is a full path starting with a '/' and ending with
# a terminating '/' (required, except in the case of the root path (/)
# where only the single '/' is required). The host specifier is
# required. 'localhost' can be used to refer to the local host.
#
declare -A SOURCES
SOURCES=(
    [localhost:/]="-X --exclude var/spool/squid"
    [localhost:/home/]="-H -A"
    [remote1:/home/]="-X"
    [remote1:/etc/]="-X"
    [www.example.org:/var/www/html/]=""
)

