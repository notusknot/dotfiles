# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$HOME/.local/bin:$PATH

autoload -U colors && colors
setopt histignorealldups sharehistory

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/.zsh_history

# Aliases
alias v='vim'
alias c='clear'
alias p='vim ~/.config/picom.conf'
alias u='vim ~/.config/.Xresources'
alias b='vim ~/.config/bspwm/bspwmrc'
alias sx='vim ~/.config/sxhkd/sxhkdrc'
alias z='vim ~/.config/.zshrc'
alias po='vim ~/.config/polybar/config'
alias mkdir='mkdir -p'
alias python='python3'
alias pip='pip3'
alias config='sudo vim /etc/nixos/configuration.nix'
alias rebuild='sudo nixos-rebuild switch'
alias ls='ls --color=auto -ash'
# Use modern completion system
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zmodload zsh/complist
compinit -d $HOME/.cache/zcompdump
_comp_options+=(globdots)

eval "$(dircolors -b)"

source /$HOME/stuff/scripts/zsh-autosuggest/zsh-autosuggestions.zsh
source /$HOME/stuff/scripts/auto-ls/auto-ls.zsh
source /$HOME/stuff/scripts/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh
source /$HOME/stuff/scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
