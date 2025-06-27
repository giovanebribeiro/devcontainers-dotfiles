# devcontainers-dotfiles

The dotfiles for my [devcontainers](https://containers.dev). The inspiration came from this [amazing](https://github.com/matheusfvesco/devcontainers-dotfiles) project.

## Pre-requisites

* nerd-fonts (More specifically, ttf-font-awesome; ttf-jetbrains-mono-nerd; ttf-nerd-fonts-symbols)

## How to use it?

Assuming that you are using VSCode, just add these lines on your settings.json:

```json
{
  "dotfiles.repository": "giovanebribeiro/devcontainers-dotfiles",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "~/dotfiles/install.sh"
}
```

But, you can use as your normal dotfiles too. If you wanna to see an example, just look at [this file](https://github.com/giovanebribeiro/dotfiles/blob/master/cfg-install)

PS: Be careful! The install.sh script will ERASE your .zshrc or .bashrc and any conflicting file. Look at the file content for details.
