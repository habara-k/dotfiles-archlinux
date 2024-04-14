# How to use

```
git clone https://github.com/habara-k/dotfiles-archlinux.git
cd dotfiles-archlinux
# Remove $HOME/.config/(nvim,sheldon,wezterm,sway) if exists
./install.sh
```

# Requirements

```
sudo pacman -S zsh fzf zoxide atuin sheldon wezterm starship eza bat
paru -S neovim-nightly-bin ghq
chsh -s $(which zsh)
```
