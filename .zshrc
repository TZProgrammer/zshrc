# Oh-my-zsh installation path
# ZSH path managed by Home Manager or generic fallback
ZSH="$HOME/.oh-my-zsh"

# Path to powerlevel10k theme
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/tokyonight_storm.omp.json)"
eval "$(starship init zsh)"

zstyle ':omz:update' mode auto      # update automatically without asking

# List of plugins used
plugins=(git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='nvim'
bindkey -v

# In case a command is not found, try to find the package that has it


# home-manager
. "/etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh"

# Zsh-abbr (NixOS path)
[ -f /run/current-system/sw/share/zsh-abbr/zsh-abbr.zsh ] && source /run/current-system/sw/share/zsh-abbr/zsh-abbr.zsh

# NixOS & Dev Shortcuts
alias nos='nh os switch /etc/nixos'
alias nosu='nh os switch -u /etc/nixos'
alias hms='nh home switch'
alias nvc='cd ~/repos/LazyVim && nvim'

# Helpful aliases
alias c='clear' # clear terminal
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias vc='code' # gui code editor
alias v='nvim' # clear terminal

# Directory navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Personal
alias icat="kitty +kitten icat"
alias grep='grep --color=auto'
alias set-root='export PYTHONPATH="$(pwd):$PYTHONPATH"'

# Keybindings
bindkey '^Y' autosuggest-accept

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Display Pokemon
#pokemon-colorscripts --no-title -r 1,3,6
#fastfetch -c neofetch

# Zoxide configs
export _ZO_FZF_OPTS=""
export _ZO_ECHO="1"
eval "$(zoxide init --cmd j zsh)"
eval "$(atuin init zsh)"

path=($HOME/.local/bin $path)
export PATH
