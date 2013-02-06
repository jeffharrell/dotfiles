#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"


read -p "This may overwrite files in your home directory. Are you sure? (y/n) " -n 2

echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	for file in `ls -A | grep -v -e README.md -e setup.sh -e .git$ -e .gitignore`; do
		if test -e "$HOME/$file"; then
			/bin/rm "$HOME/$file"
		fi

		ln -fs "$PWD/$file" "$HOME/$file"
		echo "$PWD/$file -> $HOME/$file"
	done
fi


source "$HOME/.bash_profile"