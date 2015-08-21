#
# backup_rsync Configuration file
#
# This file is sourced by the backup_rsync script to set its configuration.
#

#
# Backup Destination
#
# Backup destination directory root on the remote backup
# server. Subdirectories for each backup will be created under this
# directory. Each subdirectory will be named with the date and time
# stamp of the time the backup was performed.
#
BACKUP_HOST=backuphost
BACKUP_USER=root
BACKUPDIR=/media/BACKUPS

# Max number of backups to retain
MAX_BACKUPS=14

# Rsync options to apply globally
# Example:
# GLOBAL_RSYNC_OPTS="--exclude=.gvfs/ --exclude=NOBACKUP/"
GLOBAL_RSYNC_OPTS=""

#
# Backup Sources
#
# List of local directories to be backed up with any extra associated
# rsync options. List is an associative array where the key is the
# backup source and the value is a string containing extra options
# that will be passed to the rsync command to do the backup. The
# format of the key is:
#
# /directory/
#
# where 'directory' is a full path starting with a '/' and ending with
# a terminating '/' (REQUIRED, except in the case of the root path (/)
# where only the single '/' is required).
#
declare -A SOURCES
SOURCES=(
    [/home/]="-H -A"
    [/etc/]="-X"
    [/var/www/html/]=""
)

