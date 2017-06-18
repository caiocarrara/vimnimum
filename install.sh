#!/bin/sh

# backup vimrc user
if [ -f "$HOME/.vimrc" ]
then
    echo "[!] Backup vim user config in $HOME/.vimrc.bkp"
    mv $HOME/.vimrc $HOME/.vimrc.bkp
fi

echo '
set runtimepath+=~/.vimnimum
source ~/.vimnimum/plugins.vim
source ~/.vimnimum/generals.vim
source ~/.vimnimum/mappings.vim
source ~/.vimnimum/filetypes.vim
' > ~/.vimrc

# create undodir
if [ -d "$HOME/.vimnimum/undodir" ]
then
    echo "[!] Undodir exist"
else
    mkdir undodir
    echo "[+] Undodir create"
fi

vim -c ":PlugInstall|:qa"

echo "[+] Installed the Ultimate Vim configuration successfully! Enjoy :-)"

