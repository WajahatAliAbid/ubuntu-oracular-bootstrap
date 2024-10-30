languages:
	@echo "Installing languages"
	./scripts/languages/python.sh
	./scripts/languages/nodejs.sh
	@echo "Done installing languages"

pip_tools:
	./scripts/tools/awscli.sh

shell_tools:
	./scripts/shell/zsh.sh
	./scripts/shell/zinit.sh

tools:
	@echo "Installing tools"
	./scripts/tools/github_cli.sh
	./scripts/tools/docker.sh
	./scripts/tools/kubectl.sh
	./scripts/tools/krew.sh
	./scripts/tools/helm.sh
	./scripts/tools/kustomize.sh
	./scripts/tools/ksops.sh
	./scripts/tools/skaffold.sh
	./scripts/tools/sops.sh
	./scripts/tools/postgresql.sh
	./scripts/tools/tfenv.sh
	./scripts/tools/argocd.sh
	./scripts/tools/terragrunt.sh
	./scripts/tools/neofetch.sh
	./scripts/tools/btop.sh
	$(MAKE) pip_tools
	$(MAKE) shell_tools
	@echo "Done installing tools"

programs:
	@echo "Installing programs"
	./scripts/programs/chrome.sh
	./scripts/programs/remmina.sh
	./scripts/programs/mpv.sh
	./scripts/programs/libreoffice.sh
	./scripts/programs/obs_studio.sh
	./scripts/programs/vscode.sh
	./scripts/programs/brave.sh
	@echo "Done installing programs"
core:
	./scripts/setup_apt.sh
	./scripts/setup_libssl.sh
	./scripts/setup_fonts.sh
	./scripts/setup_networking_tools.sh

all:
	@echo "Setting up system"
	$(MAKE) core
	$(MAKE) languages
	$(MAKE) tools
	$(MAKE) programs
	./scripts/post_setup.sh
	@echo "Done setting up system"


