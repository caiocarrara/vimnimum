#!/bim/sh

cd ~/.vimnimum
git pull
vim -c ":PlugInstall|:qa"

echo 'vimnimum updated!'
