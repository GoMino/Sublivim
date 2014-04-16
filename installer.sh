#!/bin/sh
SV_VERSION="0"
SHELL_ACTIVE="${HOME}/.$(basename $SHELL)rc"

git clone https://github.com/reversTeam/Sublivim.git
cd Sublivim

if [ -d $HOME/.vim ] && [ -f $HOME/.vimrc ]; then
	echo "Sauvegarde de vos anciennes configurations Vim : ~/old-conf-vim.tar"
	(cd && tar -cf old-conf-vim.tar .vim .vimrc && rm -rf .vim .vimrc)
fi

echo "Installation du Sublivim"
cp -p .vimrc ~/ && cp -Rp vim ~/.vim

cd ../
rm -rf Sublivim
