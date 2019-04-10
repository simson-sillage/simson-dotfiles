# prefered editor:
export EDITOR=/usr/bin/vim

# custom prompt:
export PS1='${USER}@${HOST}: $(dirs +0) $(__git_ps1 " (%s)")\n> '

# PATH:
export PATH=$PATH:/home/simson/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:~/.local/bin:/sbin:/usr/sbin

# alias:
alias ibs='osc --apiurl https://api.suse.de'
alias obs='osc --apiurl https://api.opensuse.org'
alias mkcd=mkcd
alias emacs='emacs -nw'

function mkcd {
    mkdir $1 && cd $1
}
