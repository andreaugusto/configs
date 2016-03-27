.PHONY: vim oh-my-zsh

all: vim oh-my-zsh
	
vim:
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	mkdir -p ~/.vim/colors/
	git clone https://github.com/w0ng/vim-hybrid.git && ln -s `pwd`/vim-hybrid/colors/hybrid.vim ~/.vim/colors/ 

oh-my-zsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
