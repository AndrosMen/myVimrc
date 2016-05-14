#!/bin/bash
# Use > 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use > 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to > 0 the /etc/hosts part is not recognized ( may be a bug )
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

while [[ $# > 1 ]]
do
key="$1"


case $key in
	-jarvis)
	INSTJARVIS=1
	shift # past argument
	;;
	-virtual)
	ISVIRTUAL=1
	shift # past argument
	;;
esac
shift # past argument or value
done

sudo apt-get update 
sudo apt-get install dconf-cli vim -y
if [ $ISVIRTUAL -eq 1 ];then
	sudo apt-get install virtualbox-guest-x11
fi 

git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ~/.gitConfs/gnomeSolarized
~/.gitConfs/gnomeSolarized/install.sh -s dark_alternative -p Default
bash $DIR/setVim.sh

if [ $INSTJARVIS -eq 1 ];then
	bash setJarvis.sh
fi

