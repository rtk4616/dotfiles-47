export PATH="/usr/local/opt/openssl/bin:$PATH"
export CLICOLOR=1
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export NPM_PREFIX='npm get prefix'
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig


## This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars
export dotfiles="$HOME/Projects/personal/dotfiles"
export work_projects="$HOME/Projects/work"
export personal_projects="$HOME/Projects/personal"
export documents="$HOME/Documents"
export notes="$HOME/Documents/personal/my-notes"
export exer_elixir="$HOME/Projects/personal/exercism/elixir"

# Aliases
## General stuff
alias brewit='brew update && brew upgrade && brew doctor'
alias pgstart='pg_ctl start'
alias redisstart='redis-server --daemonize yes'

## Use hub instead of git
eval "$(hub alias -s)"

## Mix
alias xdp='mix deps.get'
alias xec='mix ecto.create'
alias xem='mix ecto.migrate'
alias xes='mix ecto.setup'
alias xis='xdp && npm install && xec && xem && xes'

# bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# Mac OS X: ValueError: unknown locale: UTF-8 in Python
# see: https://coderwall.com/p/-k_93g/mac-os-x-valueerror-unknown-locale-utf-8-in-python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

## Include Mix Escripts to Path
if [ -d "$HOME/.asdf/installs/elixir/1.5.1/.mix/escripts" ] ; then
  PATH="$PATH:$HOME/.asdf/installs/elixir/1.5.1/.mix/escripts"
fi

# Bash Git Prompt
# See: https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
