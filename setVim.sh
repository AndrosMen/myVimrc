sudo apt-get install git build-essential cmake python-dev python3-dev -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/andros-mendoza/myVimrc.git /.gitConfs/andros
mv /.gitConfs/andros/.vimrc ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
