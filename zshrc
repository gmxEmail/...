ZSH=$HOME/.oh-my-zsh
                                   
#  /\  /\_   _ _ __ ___   __ _ _ __  
# / /_/ | | | | '_ ` _ \ / _` | '_ \ 
#/ __  /| |_| | | | | | | (_| | | | |
#\/ /_/  \__,_|_| |_| |_|\__,_|_| |_|
                               
# You can change the theme with another one from https://github.com/robbyrussell/oh-my-zsh/wiki/themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
DEFAULT_USER=whoami
###### This line has been added and line 5 has been commented out for powerline styling ###
#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh
#### uncomment above two lines if u want another powerline !
# Useful oh-my-zsh plugins for Le Wagon bootcamps

plugins=(git ssh-agent gitfast last-working-dir common-aliases sublime history-substring-search)

# (macOS-only) Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed (To manage your Ruby versions)
export PATH="${HOME}/.rbenv/bin:${PATH}" # Needed for Linux/WSL
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Load pyenv (To manage your Python versions)
export PATH="${HOME}/.pyenv/bin:${PATH}" # Needed for Linux/WSL
type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"

# Load nvm if installed (To manage your Node versions)
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Load 'lewagon' virtualenv for the Data Bootcamp. You can comment these 2 lines to disable this behavior.
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
pyenv activate lewagon 2>/dev/null && echo "🐍 Loading 'lewagon' virtualenv"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
#source /home/human/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
  eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        # Auto-add ssh keys to your ssh agent
        # Example:
        # ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
    fi
fi


    # Don't leave extra agents around: kill it on exit. You may not want this part.
#    trap "ssh-agent -k" exit

export PATH="$HOME/.cargo/bin:$PATH"

alias l="exa --all --tree --level=1 --icons" # ---------------------------------------------------- human edition
alias x="exit"
alias c="clear"
alias v="nvim" # -----
