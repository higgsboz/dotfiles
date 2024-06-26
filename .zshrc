# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to editor
export EDITOR='nvim'

ZSH_THEME="powerlevel10k/powerlevel10k"

unsetopt correct_all

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails rake zsh-autosuggestions web-search jsontools history)

source $ZSH/oh-my-zsh.sh

source ~/.zsh_aliases

source ~/.init-beam-stuff

autoload -U add-zsh-hook

# Android SDK paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# JVM configuration
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home"
export JVM_OPTS="-Xmx3200m"
export PATH="$JAVA_HOME/bin:$PATH"


# Native Brew
export PATH="/opt/homebrew/bin:$PATH"

# Obsidian
export PATH="$PATH:$HOME/Users/brandonminner/workspace/My\ Vault/bg2md.rb"

unset GEM_PATH
unset GEM_HOME

unset BASE_DOMAIN

# eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
# eval $(thefuck --alias FUCK)

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/temp/zsh-syntax-highlighting/themes/catppuccin_frappe-zsh-syntax-highlighting.zsh
source /Users/brandonminner/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/brandonminner/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/brandonminner/.bun/_bun" ] && source "/Users/brandonminner/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(mise activate zsh)"
