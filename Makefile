default:
	@mkdir -p ~/.config
	@ln -sf $(CURDIR)/.zshrc ~/.zshrc
	@echo "Created System Link Here: ~/.zshrc"
