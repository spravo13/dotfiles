alias g="grep"
alias ls="ls --color=auto"

alias sb='source ~/.bashrc'
alias r='reset'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -i'

alias vnc='vncviewer'
alias vncv='vncviewer'
alias vncs='/usr/lib/vino/vino-server'
alias vncserver='/usr/lib/vino/vino-server'
alias ftpserver='sudo service vsftpd start'
alias ftpserver-start='sudo service vsftpd start'
alias ftpserver-stop='sudo service vsftpd stop'
alias irc='irssi'

alias p='cd ~/projects'
alias d='cd ~/dotfiles'
alias john='/usr/local/share/john-1.8.0-jumbo-1/run/john'

# Define a word using collinsdictionary.com
define() {
	curl -s "http://www.collinsdictionary.com/dictionary/english/$*" | sed -n '/class="def"/p' | awk '{gsub(/.*<span class="def">|<\/span>.*/,"");print}' | sed "s/<[^>]\+>//g";
}
 
# Epoch time conversion
epoch() {
	TESTREG="[\d{10}]"
	if [[ "$1" =~ $TESTREG ]]; then
# is epoch
		date -d @$*
	else
# is date
		if [ $# -gt 0 ]; then
			date +%s --date="$*"
		else
			date +%s
		fi
	fi
}

extract () {
	if [ -f "$1" ] ; then
		case $1 in
		*.tar.bz2) tar xvjf -- "$1" ;;
		*.tar.gz) tar xvzf -- "$1" ;;
		*.bz2) bunzip2 -- "$1" ;;
		*.rar) unrar x -- "$1" ;;
		*.gz) gunzip -- "$1" ;;
		*.tar) tar xvf -- "$1" ;;
		*.tbz2) tar xvjf -- "$1" ;;
		*.tgz) tar xvzf -- "$1" ;;
		*.zip) unzip -- "$1" ;;
		*.Z) uncompress -- "$1" ;;
		*.7z) 7z x -- "$1" ;;
		*) echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "'$1' is not a valid file"
		fi
}
