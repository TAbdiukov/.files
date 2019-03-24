
# Allow the user to set the title.
# https://superuser.com/a/84711 (modified)
function title {
   PROMPT_COMMAND="echo -ne \"\033]0;$1\007\""
}

# For alphabetic order
export LANG=en_US.UTF-8
export LC_COLLATE="en_US.UTF-8"

alias sudo='echo SUDO_ATTEMPT'
alias su='echo SU_ATTEMPT'

alias prvsd=" -c && init 2"

alias shutdown='echo SHUTDOWN_Attempt && prvsd'
alias halt='echo HALT_Attempt && prvsd'
alias reboot='echo REBOOT_Attempt && prvsd'
alias poweroff='echo POFF_Attempt && prvsd'

alias cls="clear && printf '\e[3J'"
alias g="git"
alias ga="git add ." 
alias gs="git status"

alias ping8="ping 8.8.8.8"
alias python='python --version && python '
alias python2="python"

alias ls='pwd && ls --color=auto' 
alias make="cls && make"

alias fox="~/firefox/firefox"
alias explorer=xdg-open
alias exp2=bash /usr/bin/env xdg-open  
alias googz="explorer https://google.com.au &"
alias fff="find . 2>/dev/null -name "
alias traceroute="cls && traceroute -m 255"
alias tracert=traceroute
alias del="shred -n 200 -z -u "
alias rfiles="ls && sleep 2 && find . -type f -print0 | xargs -0 shred -fuzv -n 200"
alias email="/usr/sbin/sendmail"
alias emailme="email z5214048@unsw.edu.au"
alias b="nano ~/.l"
alias c=". ~/.l"

cdls() { cd "$@" && ls; }
alias cd=cdls

cls
printf '\e[1;35m%-6s\e[m' "Scripts loaded on $HOSTNAME"
printf '\n'

ls