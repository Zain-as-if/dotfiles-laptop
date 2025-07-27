#
# ~/.bashrc
#

export TZ=Asia/Karachi
export FZF_DEFAULT_OPTS=" \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias icat='kitten icat'
alias hcursor='hyprctl setcursor'
alias hyprpanelq='hyprpanel -q'

# Alias for configs
alias hconfig='nvim ~/.config/hypr/hyprland.conf'
alias hpconfig='nvim ~/.config/hypr/hyprpaper.conf'
alias sconfig='nvim ~/.config/starship.toml'
alias nconfig='nvim ~/.config/nvim'
alias nbash='nvim ~/.bashrc'
alias sbash='source ~/.bashrc'

# Alias for pacman
alias pacman="sudo pacman"
alias pacup="sudo pacman -Syu"
alias pacf="sudo pacman -Ss"

PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd bash)"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Set vertical bar cursor
echo -ne "\e[5 q"

export PATH="$HOME/.cargo/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
