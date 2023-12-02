#!/usr/bin/bash

script_name="hc-finder"
install_dir="/usr/local/bin"

chmod +x $script_name

if sudo false; then
	echo "Root permissions required to move to $install_dir"
fi

if [[ -e "$install_dir/$script_name" ]]; then
	echo "You have ALREADY installed $script_name, reinstalling..."
	rm "$install_dir/$script_name"
fi

sudo cp "$script_name" "$install_dir"
echo "$script_name has been successfully installed to \"$install_dir\""
