MY DOTS LAPTOP

SETUP TO SYNC:
```
mkdir .dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo !! >>~/.bashrc
dotfiles init
dotfiles config --local status.showUntrackedFiles no
dotfiles branch -M main
```

SETUP TO INSTALL:
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:HappyCerberus/dotfiles-demo.git $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

USAGE (EXAMPLE):
```
dotfiles add ~/.bashrc
dotfiles commit -m 'Initial commit with .bashrc'
dotfiles remote add origin git@github.com:Zain-as-if/dotfiles-laptop.git
dotfiles push -u origin main
```
Important Packages:
Hyprland
Hyprpanel
Btop
Fastfetch
Htop
Nvim
Kitty
Spotify
Spicetify
Starship
Waypaper
Wofi
Hyprcursor
Hyprpicker
Hyprlock
