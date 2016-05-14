DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo apt-get install build-essential cmake python-dev python3-dev -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv $DIR/.vimrc ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
