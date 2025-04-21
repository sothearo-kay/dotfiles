# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.hyde.zshrc - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information

#  Aliases 
# Add aliases here

#  This is your file 
# Add your configurations here

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bind Ctrl+O to launch yazi
yazi_widget() {
  yazi
  zle reset-prompt  # Refresh the prompt after exiting yazi
}
zle -N yazi_widget
bindkey '^O' yazi_widget

# Bind Ctrl+L to launch lazydocker
lazydocker_widget() {
  lazydocker
  zle reset-prompt  # Refresh the prompt after exiting lazydocker
}
zle -N lazydocker_widget
bindkey '^L' lazydocker_widget

# Remap keys for fzf:
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --style full
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

export GOPROXY=direct
export GOSUMDB=off
export GODEBUG=netdns=go   # optional: makes Go use its own DNS resolver

# Open nvim in yazi
export EDITOR=nvim

autoload -U add-zsh-hook

load-node-version() {
  # Only run if we're in a Git repo
  if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    return
  fi

  local node_version_file

  if [[ -f .nvmrc ]]; then
    node_version_file=".nvmrc"
  elif [[ -f .node-version ]]; then
    node_version_file=".node-version"
  else
    return
  fi

  local desired_version=$(<"$node_version_file")
  local current_version=$(nvm current)

  # Skip if already using the correct version
  if [[ "$desired_version" == "$current_version" ]]; then
    return
  fi

  # If version is installed, use it; otherwise install it first
  if nvm ls "$desired_version" > /dev/null 2>&1; then
    echo "🔄 Switching to Node $desired_version"
    nvm use "$desired_version" > /dev/null
  else
    echo "⬇️  Node version $desired_version not found. Installing..."
    nvm install "$desired_version"
    nvm use "$desired_version" > /dev/null
  fi
}

# Run on directory change
add-zsh-hook chpwd load-node-version
