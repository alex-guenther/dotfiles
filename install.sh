#!/bin/sh

install_dotfiles() 
{
	echo noop	
}



find_linkables()
{
	linkables=$(find . -name '*.symlink')
	echo '---------'
	echo ' linking:'
	echo '---------'
	for link in $linkables; do
		target="${link##*/}"
		target="${target%.symlink}"
		src=${link#./}
		echo "Attempt to create link: 'ln -s $PWD/$src $HOME/.$target' "
		if [ -L "$HOME/.$target" ]; then
			echo "[xx] link exists"
		elif [ -f "$HOME/.$target" ]; then
			echo "[xx] file exists"
		elif [ -d "$HOME/.$target" ]; then
			echo "[xx] dir exists"
		else
			echo "[ok] creating..."
		  ln -s "$PWD/$src" "$HOME/.$target"
		fi
	done
	echo '------'
}


find_linkables
