SHELL := /bin/bash

install: install-git install-bash install-vim

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	git submodule init
	git submodule update

install-bash:
	if [ -a ~/.bashrc ]; then mv ~/.bashrc ~/.bashrc.old; fi;
	if [ -a ~/.bash_profile ]; then	mv ~/.bash_profile ~/.bash_profile.old; fi;
	if [ -a ~/.bash_aliases ]; then	mv ~/.bash_aliases ~/.bash_aliases.old; fi;
	ln -s `pwd`/bash/bashrc ~/.bashrc
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
	ln -s `pwd`/bash/bash_aliases ~/.bash_aliases
	source ~/.bash_profile

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	vim -e -c ":PluginInstall! " -c ":qall!"
