# prompt statement{{{1
random_happy_face() {
    local faces=(":)")
    local l=${#faces[*]}
    local sym=${faces[$(($RANDOM % $l))]}
    echo $sym
}
random_sad_face() {
    local faces=(":(")
    local l=${#faces[*]}
    local sym=${faces[$(($RANDOM % $l))]}
    echo $sym
}
cmd_check() {
    if [[ $? = 0 ]]; then
        echo "${Green}$(random_happy_face)";
    else
        echo "${Red}$(random_sad_face)";
    fi;
}
PS1='\
${Purple}\u:\w\
$(cmd_check) \
$(__git_ps1 "${Cyan}%s ")${Yellow}\
\$${Color_Off} \
'

# PS1="\
# ${Cyan}┌─${Cyan}\
# (${BIBlue}\u${Cyan})─\
# (${BIBlue}\h${Cyan})─\
# (${BIBlue}\j${Cyan})
# ${Cyan)└─\
# ${Cyan}($(cmd_check)${Cyan})\
# ${Cyan}❯${Color_Off}❯ \
# "

# PS1="${Blue}\u@\h${Color_Off}:${Cyan}\w${IBlue}❯${Color_Off}❯ "
# PS1='C:${PWD////\\\\}>'

PS2="\$"

# basic{{{1
export EDITOR='vim'
# export EDITOR='emacs'

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
