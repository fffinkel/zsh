clean:
	-rm ~/.zsh
	-rm ~/.zshrc

install: clean
	ln -s $$(pwd)/zsh/ ~/.zsh
	ln -s $$(pwd)/zshrc ~/.zshrc
