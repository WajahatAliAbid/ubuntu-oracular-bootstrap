# Ubuntu Oracular Bootstrap

This repository contains scripts to bootstrap Ubuntu Oracular distribution. This is specifically for Ubuntu 24. It might not work with Ubuntu 22.

To check if your distribution is correct, run the command
```bash
lsb_release -cs
```
This should output `oracular`.

## Contributing

Contributions are always welcome! In case you have any request or encounter a bug, please create an issue on the repo. You can also fork this repo and make your changes.

## Usage

Install the package make

```bash
sudo apt install make -y
```

Then run the following command
```bash
make all
```

Sit back and watch the script install everything for you. Then reboot the system and you should be good to go.


## Installed Software

### Core Tools

- [git](https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line)
- [curl](https://linux.die.net/man/1/curl)
- c++ compilation Tools
- zip, unzip
- jq
- htop
- vim

### Fonts
This setups some [nerd fonts](https://www.nerdfonts.com)

- CascadiaCode
- FiraCode
- FiraMono
- Hack
- JetBrainsMono
- Mononoki
- NerdFontsSymbolsOnly
- Noto
- RobotoMono
- SourceCodePro
- Terminus
- UbuntuMono
- Ubuntu

### Networking Tools

- [DNS Utils](https://packages.debian.org/sid/bind9-dnsutils)
- [Nmap](https://linux.die.net/man/1/nmap)
- [Trace Route](https://linux.die.net/man/8/traceroute)
- [MTR](https://linux.die.net/man/8/mtr)
- [Whois](https://linux.die.net/man/1/whois)

### Languages

- [NodeJs](https://nodejs.org/en)
- [Python](https://www.python.org/downloads/)

### Tools

- [Github CLI](https://cli.github.com)
- [Docker](https://www.docker.com)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Krew](https://krew.sigs.k8s.io)
- [Helm Charts](https://helm.sh)
- [Kustomize](https://kustomize.io)
- [Ksops](https://github.com/viaduct-ai/kustomize-sops)
- [Skaffold](https://skaffold.dev)
- [Sops](https://github.com/getsops/sops)
- [Postgresql Client](https://wiki.postgresql.org/wiki/PostgreSQL_Clients)
- [Tfenv](https://github.com/tfutils/tfenv)
- [Argocd](https://argo-cd.readthedocs.io/en/stable/)
- [Terragrunt](https://terragrunt.gruntwork.io)
- [Aws Cli](https://aws.amazon.com/cli/)
- [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

### Programs
- [Google Chrome](https://www.google.com/intl/en_pk/chrome/)
- [Remmina](https://remmina.org)
- [MPV Player](https://mpv.io)
- [Libre Office](https://www.libreoffice.org)
- [OBS Studio](https://obsproject.com)
- [VS Code](https://code.visualstudio.com)
- [Brave Browser](https://brave.com)
