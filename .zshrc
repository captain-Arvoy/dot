cd /mnt/karigalan/codebox
function browse(){
	firefox -p default > /dev/null 2>1 & disown
}
function wifi(){
	nmcli device wifi list
}
autoload -Uz compinit promptinit
compinit
promptinit
#conky > /dev/null 2>1 & disown
