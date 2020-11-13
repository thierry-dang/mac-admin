#!/bin/bash
# Variable to hold the value of the current user
currentuser=$(stat -f "%Su" /dev/console)

# Force empty the trash of the currently logged in user
su "$currentuser" -c "rm -rf ~/.Trash/*"
