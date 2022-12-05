if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'
    
    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'
    
    alias matrix='neo-matrix -a -c #d65d0e -F -D'
    alias clock='tty-clock -sct -C 4'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
    alias v='nvim'
    alias pac='pacman'
    alias eve='env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1'
    alias d='docker'
    alias dc='docker-compose'
#    colorscript -r

#    cat ~/.cache/wal/sequences

end
