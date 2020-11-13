#!/bin/sh

userConfirmation=$(osascript <<END 
display dialog "Confirm that you want to reset Google Chrome typing: YES" with title "Restore Google Chrome Confirmation" default answer "" buttons {"Exit","Continue"} default button 1
if button returned of the result = "Continue" then return text returned of the result
END)

if [[ $userConfirmation == YES ]]
    then
    	kill $(pgrep Google Chrome)
        rm -rf ~/Library/Application\ Support/Google/Chrome/
		rm -rf ~/Library/Preferences/com.google.Chrome*
		rm -rf ~/Library/Preferences/Google\ Chrome*
		rm -rf ~/Library/Caches/com.google.Chrome*
		rm -rf ~/Library/Saved\ Application\ State/com.google.Chrome.savedState/
		rm -rf ~/Library/Caches/Google/Chrome/
      # rm -rf ~/Library/Google/GoogleSoftwareUpdate/Actives/com.google.Chrome
        rm -rf ~/Library/Google/Google\ Chrome*
        open -a "Google Chrome"
    else
        echo user cancelled Mac reset
        osascript -e 'display dialog "Cancelled." with title "Restore default Google Chrome" buttons {"OK"} default button 1'
        exit 0
fi
