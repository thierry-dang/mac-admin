#!/bin/sh

kill $(pgrep Google Chrome)
        
rm -rf ~/Library/Caches/Google/Chrome/Default/Cache/
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Cookies/
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Cookies-journal/
rm -rf ~/Library/Caches/com.google.Chrome*
rm -rf ~/Library/Saved\ Application\ State/com.google.Chrome.savedState/
rm -rf ~/Library/Caches/Google/Chrome/
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/History/
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/History-journal/

open -a "Google Chrome"
