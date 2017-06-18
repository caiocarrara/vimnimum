#!/bin/sh

# backup vimrc user
if [ -f "$HOME/.vimrc" ]
then
    echo "[!] Backup vim user config in $HOME/.vimrc.bkp"
    mv $HOME/.vimrc $HOME/.vimrc.bkp
fi

echo '
set runtimepath+=~/.vimnimum
source ~/.vimnimum/vimrcs/plug.vim
source ~/.vimnimum/vimrcs/plugins.vim
source ~/.vimnimum/vimrcs/generals.vim
source ~/.vimnimum/vimrcs/mappings.vim
source ~/.vimnimum/vimrcs/filetypes.vim
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

