# Shell Setup

Setup guide for my personal shell configuration.

## Packages

To install all packages run:

```sh
./01_packages/install-packages.sh
```

Supported package managers are

- Pacman
- Homebrew

## Emulator Setup

You have to setup your terminal emulator to match the following conditions:

- Font: "FiraCode Nerd Font"
- Color Theme: [Nord](https://www.nordtheme.com/ports)

## Dotfiles

To setup the dotfiles and configure the ssh and gpg configuration run:

```sh
./02_dotfiles/install-dotfiles.sh
```

To update the dotfiles to the latest version run:

```sh
chezmoi update
```

## NeoVim Configuration

You can find the NeoVim configuration along with the documentation [here](https://github.com/SRTigers98/nvchad-config).

## Terminal Multiplexer

To use the specific terminal multiplexer run the provided command at shell startup.
The name _default_ can be replaced with any other name.

### tmux

```sh
tmux new-session -A -s default
```

### Zellij

```sh
zellij attach --create default
```
