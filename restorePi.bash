apt-get update
apt-get -y install openssh-server 
apt-get -y install tightvncserver
apt-get -y install autocutsel
apt-get -y install build-essential
apt-get -y git
git clone https://github.com/oz123/solarized-mate-terminal.git
git clone https://github.com/andros-mendoza/myVimrc.git
mv ./myVimrc/.vimrc ~/
rm ~/.vnc/xstartup
mv ./myVimrc/xstartup ~/.vnc/
apt-get -y install postgresql postgresql-contrib odbc-postgresql
