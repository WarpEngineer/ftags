# ftags

The **ftags** utility will set tags on files using a simple Bash script. Multiple tags can be set by comma-separating them.
Searching for tags is accomplished using the mlocate utility.

## requirements:

* bash 4
* mlocate
* building man page requires pandoc
* realpath: either coreutils or readlink -f

## Sample usage
### Set tags on files:
ftags -t tag1,tag2 file1 file2 ....

### List tags on files or directories
ftags -l [ file1 file2 directory1 ... ]

### Search for tag
ftags tag 

### Remove tag
ftags -r tag1,tag2 file1 file1 ...

# locate/slocate vs mlocate
GNU locate does not require root privileges to work since it can run as a regular user, however, mlocate is more likely to be found in different distributions than GNU locate, so it is used by ftags.

# AUTHOR
A. G. Madi (@WarpEngineer)

