# ABOUT
This script is made to run a single script into multiple servers without needing to log in manually in each one. No client no nothing it's about a user, a password and a script this is what is needed.

# This script 

 - will get all servers into the file servers.list
 - login server by server
 - copy the script.sh into the /tmp of the server
 - run the script.sh into the server
 - delete the script from the /tmp directory

# What need to be done to use it

 - write server by server into the serves.list file
 - write your script on the script.sh file
 - run the run.sh file

ps : (if you want to run the script with sudo you can uncomment the lines with sudo on the run.sh file and comment the other ones.)
