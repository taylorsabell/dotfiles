#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude  ".vim/" \
		--exclude  "bin/" \
		--exclude  "init/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--exclude .bash_profile \
		--exclude .bash_prompt \
		--exclude .bashrc \
		--exclude .curlrc \
		--exclude .editorconfig \
		--exclude .exports \
		--exclude .functions \
		--exclude .gdbinit \
		--exclude .gitattributes \
		--exclude .gitignore \
		--exclude .gvimrc \
		--exclude .hgignore \
		--exclude .hushlogin \
		--exclude .inputrc \
		--exclude .osx \
		--exclude .screenrc \
		--exclude .tmux.conf \
		--exclude .vimrc \
		--exclude .wgetrc \
		-avh --no-perms . ~;
	source ~/.zprofile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
