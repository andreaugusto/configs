.PHONY: vim oh-my-zsh init tmux

all: init vim oh-my-zsh tmux

init:
	mkdir -p ~/code/personal
	-git clone https://github.com/andreaugusto/configs.git ~/code/personal
	-ln -s ~/code/personal/configs/vim/.vimrc ~/.vimrc
	-ln -s ~/code/personal/configs/zshrc/.zshrc ~/.zshrc
	-ln -s ~/code/personal/configs/tmux/.tmux.conf ~/.tmux.conf
	
vim:
	-curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	-mkdir -p ~/.vim/colors/
	-git clone https://github.com/w0ng/vim-hybrid.git && ln -s `pwd`/vim-hybrid/colors/hybrid.vim ~/.vim/colors/ 

oh-my-zsh:
	-sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

tmux:
	-git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
