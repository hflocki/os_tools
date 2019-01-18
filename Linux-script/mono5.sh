#!/bin/sh

if dpkg-query -s mono-complete 2>/dev/null|grep -q installed; then
	echo "$(tput setaf 2)mono-complete ist installiert.$(tput sgr0)"
	mono -V
else
	echo "$(tput setaf 1)mono-complete ist nicht installiert.$(tput sgr0)"
	echo "$(tput setaf 2)Installation von mono 5.x fuer Ubuntu 18.$(tput sgr0)"
	
	sleep 3

	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
	sudo apt-get update
	sudo apt-get install mono-complete
fi