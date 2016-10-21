#!/bin/bash
echo
echo
echo REBUILDING ENVIRONMENT
echo start
echo
GIT="https://github.com/"
GITCLONE="git clone --depth=1"


AUTOLOAD="/home/michael/.vim/autoload/"
BUNDLE="/home/michael/.vim/bundle/"

TPOPE="tpope/"
SCROOLOOSE="scrooloose/"
VIMAIRLINE_D="vim-airline/"
ERIKW="erikw/"
RUSTLANG="rust-lang/"

NERDTREE="nerdtree"
RUSTVIM="rust.vim"
SYNTASTIC="syntastic"
VIMSENSIBLE="vim-sensible"
POWERLINE="tmux-powerline"
VIMAIRLINE="vim-airline"
WGET_PATHOGEN="https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
PATHOGEN_LOC="pathogen.vim"


BUNDLEFILES="$SCROOLOOSE$NERDTREE	\
	     $RUSTLANG$RUSTVIM		\
	     $SCROOLOOSE$SYNTASTIC	\
	     $TPOPE$VIMSENSIBLE		\
	     $VIMAIRLINE_D$VIMAIRLINE	\
	     $ERIKW$POWERLINE"

echo creating directories...
mkdir -p $AUTOLOAD
mkdir -p $BUNDLE
echo directories created.
echo
echo
for gitfile in $BUNDLEFILES; do
	$GITCLONE $GIT$gitfile.git $BUNDLE$(echo $gitfile | cut -d "/" -f 2) 
done
echo
echo
echo GETTING PATHOGEN
	wget $WGET_PATHOGEN && mv $PATHOGEN_LOC $AUTOLOAD$PATHOGEN_LOC
echo 

echo make sure to copy
echo .tmux.conf
echo .vimrc
echo tmuxline_snap
echo over to your home directory!
echo
echo done.
echo
