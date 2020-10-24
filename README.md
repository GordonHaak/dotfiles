# Dotfiles

The idea is based on: [A simpler way to manage your dotfiles](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html)


## first time setup

initialize the git repository
```sh
mkdir $HOME/.dotfiles
git init --bare $HOME/.dotfiles
```

create an comfort alias
```sh
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## checkout on other machines

```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/GordonHaak/dotfiles.git ~
```

if this doesn't work because some configs already exists
```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/GordonHaak/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```

# AwesomeWM

[AwesomeWM](https://github.com/awesomeWM/awesome.git) is based on [Floppy](https://github.com/manilarome/the-glorious-dotfiles)

```sh
sudo pacman -S nm-connection-editor blueman
sudo pacman -S pamac-gtk pamac-snap-plugin pamac-flatpak-plugin  pamac-tray-appindicator

yay -S awesome-git rofi-git picom-tryone-git
sudo pacman -S awesome-freedesktop
```

# Tools
```sh
sudo pacman -S bat skim fd ripgrep
sudo pacman -S powerline powerline-fonts
yay -S universal-ctags-git
```

## Alacritty

[Alacritty](https://github.com/alacritty/alacritty) installation
```sh
sudo pacman -S alacritty
```

## Zsh
```sh
sudo pacman -S zsh
```

install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Tmux

[tmux](https://github.com/tmux/tmux/wiki) installation
```sh
sudo pacman -S tmux
yay -S tmuxinator
```

install tmux [plugin manager](https://github.com/tmux-plugins/tpm)
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Neovim

[Neovim](https://neovim.io/) 0.5 is needed for LSP support
```sh
yay -S neovim-git
```

install [vim-plug](https://github.com/junegunn/vim-plug)
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Links

- [vim config generator](https://vim-bootstrap.com/)
- [vim plugin list](https://vimawesome.com/)
- [tmux](https://tmuxcheatsheet.com/) cheat sheet
- [awesome tmux](https://github.com/rothgar/awesome-tmux)
- fzf [arch-wiki](https://wiki.archlinux.org/index.php/Fzf)
