README for rsync_backup and backup_rsync

NOTE: This software comes with ABSOLUTELY NO WARRANTY. It is free
software, and you are welcome to redistribute it under certain
conditions.  See the GNU General Public Licence in the LICENSE file
for details.

RSYNC_BACKUP:

rsync_backup is a Bash script to perform filesystem backups using the rsync utility. It supports making backups of multiple directory trees on multiple different hosts. Backups are stored on a file system mounted on the system where rsync_backup is run.

rsync_backup makes use of rsync's --link-dest option in order to efficiently keep multiple snapshots of the backed up sources. Files that have not changed between successive backups are hard linked together. This greatly reduces the amount of disk space needed to maintain multiple snapshots. It also greatly reduces the amount of data that needs to be transferred for each new backup since only files that have been added or changed since the last backup need to be copied.

By default, rsync_backup will look for a configuration files called 'rsync_backup.conf.sh' in the same directory it is run from. Another default location for the configuration file may be defined at the top of the rsync_backup script.

The configuration file defines the source hosts and directories which are to be backed up as well as other options to be passed rsync either globally or specifically associated with the source. See the sample configuration file, rsync_backup-example.conf.sh, for more information.

BACKUP_RSYNC:

backup_rsync works basically like rsync_backup except that it runs on the machine to be backed up pushes local files and directories to a remote backup server.

This project is maintained on GitHub. You may download or clone a copy of the repository here:

https://github.com/ehuott/rsync_backup


Last update: 21 August 2015



# Emacs variables below this line
# Local Variables:
# mode:visual-line
# End:
