.PHONY: vim neovim oh-my-zsh init tmux i3 zsh polybar scripts X

DEFAULT_FOLDER=~/code/personal
DEFAULT_CONFIG_FOLDER=$(DEFAULT_FOLDER)/configs

all: init vim neovim oh-my-zsh tmux i3 polybar zsh

echo:
	echo $(DEFAULT_FOLDER)
	echo $(DEFAULT_CONFIG_FOLDER)

init:
	mkdir -p $(DEFAULT_FOLDER)
	-git clone https://github.com/andreaugusto/configs.git $(DEFAULT_FOLDER)
	-ln -s $(DEFAULT_CONFIG_FOLDER)/vim/.vimrc ~/.vimrc
	-ln -s $(DEFAULT_CONFIG_FOLDER)/zshrc/.zshrc ~/.zshrc
	-ln -s $(DEFAULT_CONFIG_FOLDER)/tmux/.tmux.conf ~/.tmux.conf
	
vim:
	-curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	-mkdir -p ~/.vim/colors/
	-git clone https://github.com/w0ng/vim-hybrid.git && mv ./vim-hybrid/colors/hybrid.vim ~/.vim/colors && rm -Rf ./vim-hybrid

neovim:
	-curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	-mkdir -p .config/nvim
	-ln -s $(DEFAULT_CONFIG_FOLDER)/neovim/init.vim ~/.config/nvim/

i3:
	-ln -s $(DEFAULT_CONFIG_FOLDER)/.i3 ~/

oh-my-zsh:
	-sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

zsh:
	-mv ~/.zshrc ~/.zshrcbckp
	-ln -s $(DEFAULT_CONFIG_FOLDER)/zsh/.zshrc ~/

tmux:
	-git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

polybar:
	-ln -s $(DEFAULT_CONFIG_FOLDER)/polybar ~/.config/

scripts:
	-ln -s ${DEFAULT_CONFIG_FOLDER}/scripts/* ~/

X:
	-ln -s $(DEFAULT_CONFIG_FOLDER)/X/.Xmodmap ~/

