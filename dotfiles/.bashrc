# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

# Start neofetch
neofetch

# Start powerline-shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# enable vi mode
set -o vi

# change jk to esc in vi mode
bind '"jk":vi-movement-mode'

# Set default editor
export EDITOR='nvim'
export VISUAL='nvim'

# vim man pages
export MANPAGER="/bin/sh -c \"col -b | /usr/bin/vim -u ~/.basic_vimrc --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# Enable fzf search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Remap CTRL-T to CTRL-G for fzf
bind -x '"\C-g": fzf-file-widget'
bind '"\C-t": transpose-chars'

# set colorscheme to current wallpaper
# wal --vte -q -R

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
