#! /bin/bash

	# Install some mac parameters
	echo "Closing Safari for set up..."

	# Close safari
	killall "Safari" ; sleep 1

	# Enable the Develop menu and the Web Inspector
	defaults write com.apple.Safari IncludeDevelopMenu -bool true
	defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
	defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

	# No auto-fill credit card data
	defaults write com.apple.Safari AutoFillCreditCardData -bool false

	# No auto-fill user & password
	defaults write com.apple.Safari AutoFillPasswords -bool false

	# Block pop-up windows
	defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
	defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

	# No autmatically open `safe` files
	defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

	# Disable all extensions in Safari
	defaults write com.apple.Safari ExtensionsEnabled -bool false

	# Systematic alert on Fraudulent Websites
	defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

	# Treat SHA1 certificates as unsecured
	defaults write com.apple.Safari TreatSHA1CertificatesAsInsecure -bool true

	# Use Do Not Track
	defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

	# Update extensions automatically
	defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

exit 0
