# variables
IP="$(echo $SSH_CLIENT | awk {'print $1'})"
STATIC="$(resolveip -s $IP)"

fhom="$HOME"
falt="/unsw/$USER"
fmy="$falt/myfiles.unsw.edu.au"

# Allow the user to set the title.
# https://superuser.com/a/84711 (modified)
function title {
   PROMPT_COMMAND="echo -ne \"\033]0;$1\007\""
}

# For alphabetic order
export LANG=en_US.UTF-8
export LC_COLLATE="en_US.UTF-8"

#reset old setup
unalias * 2>/dev/null

# cd&ls mod
alias ls='pwd && ls --color=auto' 

unalias cd
cdls() { cd "$@" && ls; }
alias cd=cdls

alias cda="cd $falt"
alias cdh="cd $fhom"
alias cdm="cd $fmy"

# Halt force logoff (hopefully)
alias sudo='echo SUDO_ATTEMPT'
alias su='echo SU_ATTEMPT'

alias prvsd=" -c && init 2"

alias shutdown='echo SHUTDOWN_Attempt && prvsd'
alias halt='echo HALT_Attempt && prvsd'
alias reboot='echo REBOOT_Attempt && prvsd'
alias poweroff='echo POFF_Attempt && prvsd'

# git
## old aliases remap 
alias gs2="gs"
alias ghostscript2="gs"
## new aliases
alias g="git" 
alias gs="git status"
alias gr="git reset"
alias ga="git add . && gs"
alias gcm="git commit -m "
alias gh="ga && gsm"

# Python
alias python='python --version && python '
alias python2="python"

# Tools
alias nmap=n

# compiling
alias make="cls && make"

# local apps
alias fox="cd ~/firefox && ~/firefox/firefox"
alias ffmpeg="~/ffmpeg/ffmpeg"

# Windows-like
alias pause="read -n1 -r -p $'Press any key to continue...\n' key"
alias cls="clear && printf '\e[3J'"
alias del="shred -n 200 -z -u "
alias cget=wget

alias traceroute="cls && traceroute -m 255"
alias tracert=traceroute

## go online
alias explorer=xdg-open

alias explorer1=explorer
alias explorer2=bash /usr/bin/env xdg-open  

alias goog="explorer https://google.com.au &"

# Kwik edit bashrc
alias b="nano ~/.l"
alias c=". ~/.l"

# Convenience
alias fff="find . 2>/dev/null -name "
alias ping8="ping 8.8.8.8"
alias pingm="ping $IP"
alias rfiles="ls && sleep 2 && find . -type f -print0 | xargs -0 shred -fuzv -n 200"

alias email="/usr/sbin/sendmail"
alias emailme="email z5214048@unsw.edu.au"

# autoexec
cls
printf '\e[1;35m%-6s\e[m' "Scripts loaded on $HOSTNAME from $static"
printf '\n'

rquota
ls
