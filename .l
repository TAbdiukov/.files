# home folders
fhom="$HOME"
falt="/unsw/$USER"
fmy="$falt/myfiles.unsw.edu.au"

# Allow the user to set the title.
# https://superuser.com/a/84711 (modified)
function title {PROMPT_COMMAND="echo -ne \"\033]0;$1\007\""}

# For alphabetic order
export LANG=en_US.UTF-8
export LC_COLLATE="en_US.UTF-8"

#reset old setup
unalias * 2>/dev/null

# cd&ls mod
alias ls='pwd && ls --color=auto '

unalias cd
cdls() { cd "$@" && ls; }
alias cd=cdls

alias cda="cd $falt"
alias cdh="cd $fhom"
alias cdm="cd $fmy"

# Halt force logoff (hopefully)
alias prvsd=" -c && init 2"

#alias sudo='echo SUDO_ATTEMPT'
#alias su='echo SU_ATTEMPT'

#alias shutdown='echo SHUTDOWN_Attempt && prvsd'
#alias halt='echo HALT_Attempt && prvsd'
#alias reboot='echo REBOOT_Attempt && prvsd'
#alias poweroff='echo POFF_Attempt && prvsd'

# git
alias g="git"
alias gs="git status"
alias gr="git reset"
alias ga="git add . && gs"
alias gcm='git commit -m '

# Python
alias python2="python"

alias python='python3 --version && python3 '
alias python3="python3"

# Tools
alias n=nmap

# compiling
alias make="cls && make"

# local apps
alias fox="cd ~/firefox && ~/firefox/firefox"
alias fmpeg="~/ffmpeg/ffmpeg"
alias ida="~/idafree-7.0/ida64"
alias dirstat="~/qdirstat/bin/qdirstat"

# Windows-like
alias pause="read -n1 -r -p $'Press any key to continue...\n' key"
alias cls="clear && printf '\e[3J'"
alias del="shred -n 199 -z -u "
alias cget=wget

alias traceroute="cls && traceroute -m 255"
alias tracert=traceroute

## go online
alias explorer=xdg-open

alias explorer1=explorer
alias explorer2=bash "/usr/bin/env xdg-open"

alias goog="explorer https://google.com.au &"

# Kwik edit bashrc
alias b="nano ~/.l"
alias c=". ~/.l"

# Convenience
alias fff="find . 2>/dev/null -name "
alias ping8="ping 8.8.8.8"
alias pingm="ping $ip"
alias rfiles="ls && sleep 2 && find . -type f -print0 | xargs -0 shred -fuzv -n 200"

alias email="/usr/sbin/sendmail"
alias emailme="email z5214048@unsw.edu.au"

# autoexec
killall ssh-agent
cls
printf '\e[1;35m%-6s\e[m' "Scripts loaded on $HOSTNAME"
printf '\n'
## Autoexec -> git ssh
eval "$(ssh-agent -s)"

rquota
ls

