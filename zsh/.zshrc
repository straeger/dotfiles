ZSH=$HOME//.oh-my-zsh
ZSH_CUSTOM=$HOME/zsh_custom
ZSH_THEME="bira"

plugins=(kubectl docker docker-compose git node npm nvm z yarn-autocompletions)

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# oh my zsh
source $ZSH/oh-my-zsh.sh

# zsh plugins (need to install them separately)
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# z
source $HOME/z.sh

# aliases
#source $HOME/.aliases

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

source <(curl -sL init.zshell.dev); zzinit

zinit ice atload"zpcdreplay" atclone'./zplug.zsh'
zinit light g-plane/zsh-yarn-autocompletions

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

