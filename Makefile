SHELL := /bin/bash

install: install-vim install-bash install-git

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-bash:
	if [ -a ~/.bashrc ]; then mv ~/.bashrc ~/.bashrc.old; fi;
	if [ -a ~/.bash_profile ]; then	mv ~/.bash_profile ~/.bash_profile.old; fi;
	ln -s `pwd`/bash/bashrc ~/.bashrc
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
	source ~/.bash_profile

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
