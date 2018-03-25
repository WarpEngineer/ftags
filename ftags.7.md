# NAME
ftags - tag files and search by tags

# SYNOPSIS
**ftags** [options] [files]

# OPTIONS
-l --list&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;List set tags on files or directories  
-t --tags&nbsp;&nbsp;&nbsp;[arg] Comma separated list of tags to set  
-r --remove [arg] Comma separated list of tags to remove  
-R --recurse&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#TODO recurse through subdirs.  
-u --update&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update mlocate database after setting/removing tags  
-p --prune&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prune broken tags in a directory  
-v&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enable verbose mode, print script as it is executed  
-d --debug&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enables debug mode  
-h --help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This page  
-n --no-color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Disable color output  
-V --version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Show version and exit  

# DESCRIPTION
The **ftags** utility will set tags on files and search for them.  Multiple tags can be set by comma-separating them.
Searching for tags is accomplished using the mlocate utility, so it should be installed.  In order to update
the mlocate database manually, sudo access to the updatedb command is required.

## Sample usage
### Set tags on files:
ftags -t tag1,tag2 file1 file2 ....

### List tags on files or directories
ftags -l [ file1 file2 directory1 ... ]

### Search for tag
ftags tag 

### Remove tag
ftags -r tag1,tag2 file1 file1 ...

**Warning:** Moving a file will break its tags. Moving a directory will break tags until next time updatedb is run.

# locate/slocate vs mlocate
GNU locate does not require root privileges to work since it can run as a regular user, however, mlocate is more likely to be found in different distributions than GNU locate, so it is used by ftags.  Furthermore, it looks like the version installed with Mac OS requires root privileges anyway.

# AUTHOR
A. G. Madi (@WarpEngineer)
