# exit if not in interactive mode
status -i || exit

# greeting

set fish_greeting ""

# ENV

set yarnpath (yarn global bin 2>/dev/null)
set PATH "$PATH:$yarnpath:/opt/node/bin"
set PATH "$PATH:$HOME/.local/bin"

# Aliases

alias t='tmux'
alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never --theme=TwoDark"
alias ls "exa -g -l --icons"
alias lsa 'll -la'
alias tree "exa -T"
alias vim='nvim'
alias g="copier -c github_token 2>&1 > /dev/null && git"
alias yr='yarn run --ignore-engines'

function v
  set arg "$argv"
  if test (count $argv) = 0
    set arg '.'
  end

  vim "$arg"
end

# Prompt

# set -g theme_color_scheme terminal-dark
# set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
# set -g theme_hostname always
starship init fish | source

# Colorscripts and some stuff

source $HOME/.config/fish/spark.fish

# -- colorscript

# function fish_greeting
#   colorscript random
# end

# -- rxfetch
# function fish_greeting
#   rxfetch
# end
 
# -- sparklines

# function clear
#   tput reset
#   echo && echo
#   seq 1 (tput cols) | \
#     sort -R | \
#     spark | \
#     lolcat
#   echo && echo
# end

function clear
  tput reset
end

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# color
set fish_color_normal brwhite
set fish_color_command brmagenta
set fish_color_param brpurple
set fish_color_error brred

# vi-mode
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# package.json scripts
function packageScripts
  if ! test -f ./package.json
    echo "package.json does not exists in this directory ($PWD)"
  else
    /bin/cat package.json | json-parser - '.scripts' \
      | sed 's/{//g' \
      | sed 's/}//g' \
      | sed "s/'//g"
  end
end
