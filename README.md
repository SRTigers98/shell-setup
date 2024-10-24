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

## Dotfiles

To setup the dotfiles and configure the ssh and gpg configuration run:

```sh
./02_dotfiles/install-dotfiles.sh
```

To update the dotfiles to the latest version run:

```sh
chezmoi update
```

## Emulator Setup

The recommended and configured terminal emulator is [wezterm](https://wezfurlong.org/wezterm/index.html).
Wezterm is installed along with the packages and is configured in the dotfiles.

## NeoVim Configuration

You can find the NeoVim configuration along with the documentation [here](https://github.com/SRTigers98/nvchad-config).

## Terminal Multiplexer

You can use either [tmux](https://github.com/tmux/tmux)
or [ZelliJ](https://github.com/zellij-org/zellij) as terminal multiplexer.

### tmux (recommended)

To start a new tmux session, run the following command:

```sh
tmux new-session -A -s default
```

Initially you have to setup the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).
To install it run the following command:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then you can install all plugins by pressing `Ctrl+a+I` while tmux is running.

### Zellij

To start a new ZelliJ session, run the following command:

```sh
zellij attach --create default
```
