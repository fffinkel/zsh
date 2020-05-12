clean:
	-rm ~/.zsh
	-rm ~/.zshrc

install: clean
	git submodule init
	git submodule update
	ln -s ~/cnf/dotfiles/zsh/ ~/.zsh
	ln -s ~/cnf/dotfiles/zshrc ~/.zshrc
