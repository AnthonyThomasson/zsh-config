ln -sf $PWD/.zshrc ~/.zshrc
echo "Created System Link Here: ~/.zshrc"
if [ ! -d ~/.oh-my-zsh ]; then \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
	echo "installed oh-my-zsh"; \
else \
	echo "oh-my-zsh already installed"; \
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then \
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
	echo "installed zsh-autosuggestions"; \
else \
	echo "zsh-autosuggestions already installed"; \
fi