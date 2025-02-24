# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Alias 

alias ls='lsd'
alias py='python3'
alias g='git'
alias pyw='python.exe'
alias exp='explorer.exe'
# Plugins de Oh My Zsh
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting fzf zsh-completions)

# Agregar Homebrew al PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Ejecutar temas de oh-my-posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"

# Configuración de Node.js
export PATH="/home/linuxbrew/.linuxbrew/opt/node@20/bin:$PATH"

# Configuración para iniciar tmux
if [ -z "$TMUX" ] && command -v tmux >/dev/null 2>&1; then
  exec tmux
fi

# Configuración historial
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history  # Agrega comandos al historial inmediatamente
setopt share_history       # Comparte el historial entre terminales

# miniconda3
source ~/miniconda3/etc/profile.d/conda.sh

# Configuración de fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/miniconda3/bin:$PATH"
