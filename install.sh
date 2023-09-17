if [ -n "$1" ]; then
    HOME=$1
fi

ln -sf $PWD/.zshrc $HOME/.zshrc
echo "Created System Link Here: $HOME/.zshrc"
if [ ! -d $HOME/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
	echo "installed oh-my-zsh";
else
	echo "oh-my-zsh already installed";
fi
if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
	echo "installed zsh-autosuggestions";
else
	echo "zsh-autosuggestions already installed";
fi