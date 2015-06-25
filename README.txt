README for rsync_backup

NOTE: rsync_backup comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to redistribute it under certain conditions.
See the GNU General Public Licence in the file COPYING for details.

rsync_backup is a Bash script to perform filesystem backups using the rsync utility. It supports making backups of multiple directory trees on multiple different hosts. Backups are stored on a file system mounted on the system where rsync_backup is run.

rsync_backup makes use of rsync's --link-dest option in order to efficiently keep multiple snapshots of the backed up sources. Files that have not changed between successive backups are hard linked together. This greatly reduces the amount of disk space needed to maintain multiple snapshots. It also greatly reduces the amount of data that needs to be transferred for each new backup since only files that have been added or changed since the last backup need to be copied.



Last update: 25 June 2015

