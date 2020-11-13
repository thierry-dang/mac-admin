#!/bin/sh

Force quit all non-essential applications

userConfirmation=$(osascript <<END 
display dialog "Are you sure that you want to close all your apps typing: YES" with title "Force Quit All Apps Confirmation" default answer "" buttons {"Exit","Continue"} default button 1
if button returned of the result = "Continue" then return text returned of the result
END)

if [[ $userConfirmation == YES ]]
    then
    	declare -a killPIDs
		killPIDs=$(ps axww -o pid,command | grep -v bash | grep [A]pplications/ | grep -v /bin/sh | grep -v [C]asper | grep -v [J]amf | grep -v [S]elf\ Service | grep -v [M]cAfee | grep -v [V]ZAccess* | grep -v grep | awk '{print $1}')
		Kill said processes.


		for i in ${killPIDs[@]}
			do
    			echo "Killing PID $i"
    			kill -9 $i
			done
    else
        echo user cancelled Mac reset
        osascript -e 'display dialog "Cancelled." with title "Operation aborded" buttons {"OK"} default button 1'
        exit 0
fi


