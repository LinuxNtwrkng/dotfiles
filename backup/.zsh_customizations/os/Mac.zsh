#MacOS specific aliases and functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#For iTerm.  Change background color depending on which host I'm SSH'd into (or not)

function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
  # if you have trouble with this, change
  # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}

function tab-reset() {
    NAME="Default"
    echo -e "\033]50;SetProfile=$NAME\a"
    trap - INT EXIT
}

function colorssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        if [[ "$*" =~ "pacha*" ]]; then
            tabc pacha
        elif [[ "$*" =~ "macha*" ]]; then
            tabc pacha
        else
            tabc "other ssh"
        fi
    fi
    ssh $*
}
compdef _ssh tabc=ssh

alias ssh="colorssh"
#End iTerm colored SSH

PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

#alias ftp="gftp"
#alias telnet="gtelnet"
#alias whois="gwhois"
