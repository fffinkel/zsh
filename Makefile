clean:
	-rm ~/.zsh
	-rm ~/.zshrc

install: clean
	git submodule init
	git submodule update
	ln -s ~/cnf/zsh/zsh/ ~/.zsh
	ln -s ~/cnf/zsh/zshrc ~/.zshrc
