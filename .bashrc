# exit if in interactive mode
[ -z "$PS1" ] && exit

# env
export TERM="xterm-256color"                      # getting proper colors
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries

# vi-mode
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PROMPT
# This is commented out if using starship prompt
# PS1='[\u@\h \W]\$ '

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

export PATH="$PATH:/opt/crystal/bin:/opt/node/bin"
export PATH="$PATH:$(yarn global bin 2>/dev/null)"

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

# git with copier
alias g="copier -c github_token 2>&1 > /dev/null && git"

# alias
alias t='tmux'
alias grep="grep --color=auto"
alias cat="bat --style=plain --paging=never --theme=TwoDark"
alias ls="exa -g -l --icons"
alias lsa='ll -la'
alias tree="exa -T"
alias vim='nvim'
alias yr='yarn run --ignore-engines'

# vim
function v () {
  arg="$@"
  if [[ $# == 0 ]]; then
    arg='.'
  fi
  
  vim "$arg"
}

# prompt
eval "$(starship init bash)"

# package.json scripts
function packageScripts () {
  if ! test -f ./package.json; then
    echo "the package.json file does not exists in this pwd ($PWD)"
  else
    /bin/cat package.json | json-parser - '.scripts' \
      | sed 's/{//g' \
      | sed 's/}//g' \
      | sed "s/'//g"
  fi
}
