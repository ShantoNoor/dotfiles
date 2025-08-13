# dotfiles

## Setup

## Competitive Companion Setup

> `add port 12345`

## nvim

## lsps

> `Run :MasonToolsInstall`

> `clangd` `pylsp`

```sh
apt/brew install clangd

pip install python-lsp-server
pip install pylsp-mypy
pip install python-lsp-ruff
--

```

> `lua-language-server`

## formatters

> `stylua`

## variables

> `gpp='g++'`
> `gpp_args='-std=c++20'`

## cp-root

>> `g++ -std=c++20 -O3 -x c++-header stdc++.h -o stdc++.h.gch`

## stow

`dots` `nvim` `clangd-macos` `clangd-linux` `ghostty` `kitty` `cp-root`

## sh

```sh
stow dots nvim ghostty cp-root clangd-macos
```

```sh
stow dots nvim ghostty cp-root clangd-linux
```

## dots

```bash
echo 'source ~/.bashsc' >> ~/.bashrc
source ~/.bashrc

```

```zsh
echo 'source ~/.bashsc' >> ~/.zshrc
source ~/.zshrc
```
