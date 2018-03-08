# prefered editor:
export EDITOR=/usr/bin/vim

# custom prompt, changed colors, added git current branch and a newline:
export PS1='\[\033[01;32m\]\u\e[34m@\e[32m\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n> '

# PATH:
export PATH=$PATH:/home/simson/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:~/.local/bin:/sbin:/usr/sbin

# alias:
alias ibs='osc --apiurl https://api.suse.de'
alias obs='osc --apiurl https://api.opensuse.org'
alias py='python'
alias rb='ruby'
alias zy='sudo zypper'
alias mkcd=mkcd

# code completion:
complete -F _zypper zy

function mkcd {
    mkdir $1 && cd $1
}
