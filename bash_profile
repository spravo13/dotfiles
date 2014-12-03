cmd_check() {
    if [[ $? = 0 ]]; then
        echo " ${Green}✓";
    else
        echo " ${Red}✗";
    fi;
}

PS1='\
${BIGreen}\u: ${IWhite}\W\
$(cmd_check) \
$(__git_ps1 "${Cyan}%s ")${Yellow}\
\$${Color_Off} \
'

PS2="\$"

# basic{{{1
export EDITOR='vim'

if [ "$TERM" == "xterm" ]; then
            export TERM=xterm-256color
            fi

# fortune | cowsay

# alias stuff{{{1
bind '"\t":menu-complete'
alias sb='source ~/.bashrc'
alias r='reset'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -i'

alias vrc='$EDITOR ~/dotfiles/vimrc'
alias vrcb='$EDITOR ~/dotfiles/vimrc.bundles'
alias brc='$EDITOR ~/dotfiles/bashrc'
alias bp='$EDITOR ~/dotfiles/bash_profile'
alias tconf='$EDITOR ~/dotfiles/tmux.conf'

alias v='xmodmap ~/.vim-keys.xmodmap'
alias emacs='emacs -nw'
alias vless='vim -u /usr/share/vim/vim74/macros/less.vim'

ipls () {
            ifconfig | grep 'inet addr:' | awk {'print $2'}
}
