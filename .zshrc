#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '®' peco-src

function relogin() {
    exec $SHELL -l
}

alias rm='set -f; rmrm'
function rmrm() {
    local ch
    echo $@ | grep -Gq "^/$\| /$\|^/ \| / "
    if [ $? -eq 0 ]; then
        set +f
        echo "DONOT execute 'rm /'"
        return 1
    fi

    echo $@ | grep -q "*"
    if [ $? -eq 0 ]; then
        set +f
        ls $@
        if [ $? -ne 0 ]; then
            return 0
        fi
        echo -n "Are you sure? [Y/n] "
        while : ; do
            read ch
            if [ "${ch}" = "Y" ]; then
                command rm $@
                return 0
            elif [ "${ch}" = "n" ] || [ "${ch}" = "N" ]; then
                return 1
            else
                echo -n "[Y/n]"
            fi
        done
    else
        command rm $@
        return 0
    fi
}

alias gch='git checkout'
alias gs='git status'
