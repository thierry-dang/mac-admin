#!/bin/bash

# MacOS installer .app MUST be cached by a other policy in order to work.

userConfirmation=$(osascript <<END 
display dialog "Confirm that you want to reset your Mac and lose all data by typing ERASE" with title "Erase Mac and Install macOS" default answer "" buttons {"Exit","Continue"} default button 1
if button returned of the result = "Continue" then return text returned of the result
END)

if [[ $userConfirmation == ERASE ]]
    then
        echo user confirmed intent to reset Mac and erase all data by typing ERASE
    else
        echo user cancelled Mac reset
        osascript -e 'display dialog "Cancelled." with title "Erase Mac and Install macOS" buttons {"OK"} default button 1'
        exit 0
fi

'/Applications/Install macOS Catalina.app/Contents/Resources/startosinstall' --eraseinstall --agreetolicense --forcequitapps --newvolumename 'Macintosh HD'
