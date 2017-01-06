clean:
	-rm ~/.zsh
	-rm ~/.zshrc

install: clean
	git submodule init
	git submodule update
	ln -s $$(pwd)/zsh/ ~/.zsh
	ln -s $$(pwd)/zshrc ~/.zshrc
