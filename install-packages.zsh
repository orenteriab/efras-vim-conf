#!/usr/bin/env zsh

VIM_START="$HOME/.vim/pack/vendor/start"
CURRENT_DIRECTORY="$(pwd)"

cd $VIM_START

if [ ! command -v git &> /dev/null ]; then
	echo 'You need git to download these things'
	exit 1
fi

# NERDTree
if [ ! -d "$VIM_START/nerdtree" ]; then
	echo 'Installing nerdtree'
	git clone https://github.com/preservim/nerdtree.git "$VIM_START/nerdtree"
	echo 'NERDTree installed'
else
	echo 'It seems nerdtree is installed'
	echo 'Would you like me to update nerdtree? [y/Y]'
	read UPDATE_NERDTREE

	if [ $UPDATE_NERDTREE = 'y' ] || [  $UPDATE_NERDTREE = 'Y' ]; then
		echo 'Updating NERDTREE'
		cd $VIM_START/nerdtree
		git pull origin
		echo 'Nerdtree is updated'
		cd $CURRENT_DIRECTORY
	fi
fi

# fzf
if [ ! command -v fzf &> /dev/null ]; then
	echo 'We need to install fzf first'
	brew install fzf
fi

if [ ! -d "$VIM_START/fzf" ]; then
	echo 'Installing fzf.vim'
	git clone https://github.com/junegunn/fzf.vim.git "$VIM_START/fzf"
	echo 'fzf.vim installed'
else
	echo 'It seems fzf.vim is installed'
	echo 'Would you like me to update fzf.vim? [y/Y]'
	read UPDATE_FZF_VIM

	if [ $UPDATE_FZF_VIM = 'y' ] || [  $UPDATE_FZF_VIM = 'Y' ]; then
		echo 'Updating fzf.vim'
		cd $VIM_START/fzf
		git pull origin
		echo 'fzf.vim is updated'
		cd $CURRENT_DIRECTORY
	fi
fi

# Installing CoC
if [ ! -d "$VIM_START/coc" ]; then
	echo 'Installing coc.vim'
	git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1 "$VIM_START/coc"
	echo 'coc.vim installed'
else
	echo 'It seems coc.vim is installed'
	echo 'Would you like me to update coc.vim? [y/Y]'
	read UPDATE_COC_VIM

	if [ $UPDATE_COC_VIM = 'y' ] || [  $UPDATE_COC_VIM = 'Y' ]; then
		echo 'Updating coc.vim'
		cd $VIM_START/coc
		git pull origin release
		echo 'coc.vim is updated'
		cd $CURRENT_DIRECTORY
	fi
fi

