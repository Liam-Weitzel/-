alias nixsw='sudo nixos-rebuild switch --flake ~/Home-Sweet-Home/flake.nix#liam-w -vvvv'
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gca='git commit --ammend'
alias gph='git push'
alias gphf='git push -f'
alias gpl='git pull'
alias gplf='git pull -f'
alias gfe='git fetch'

vi() {
    nvim "$@"
}

# enable color support for commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
