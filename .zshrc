# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Alias 

alias ls='lsd'
alias py='python3'
# Plugins de Oh My Zsh
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting fzf zsh-completions)

# Agregar Homebrew al PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Ejecutar temas de oh-my-posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json)"

# Configuración de Node.js
export PATH="/home/linuxbrew/.linuxbrew/opt/node@20/bin:$PATH"

# Configuración para iniciar tmux
if command -v tmux >/dev/null 2>&1; then
  if [ -z "$TMUX" ]; then
    exec tmux
  fi
fi

# Configuración de fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

