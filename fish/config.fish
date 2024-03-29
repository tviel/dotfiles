if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'
    
    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'
    
    alias matrix='neo-matrix -a -c gold -F -D'
    alias clock='tty-clock -sctB -C 7'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
    alias v='nvim'
    alias pac='pacman'
    alias eve='env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1'
    alias d='docker'
    alias dc='docker-compose'
    alias lock='i3lock-fancy-multimonitor -p -n'

    
#    colorscript -r

#    cat ~/.cache/wal/sequences

end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

