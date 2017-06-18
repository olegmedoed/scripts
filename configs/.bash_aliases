shopt -s expand_aliases

alias l='less -R'

alias ls="ls -F --color=auto --group-directories-first"
alias L="ls -lhX"
alias Ll="L | l"

alias grep='grep --color'
alias Pgrep='grep -P '

# C=color F=format L=level A=ansi-lines s=size h=human
alias tree='tree -CF --dirsfirst'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t2l='t2 | l'
alias t3l='t3 | l'

alias ncal='ncal -M3'

alias info='info --vi-keys'

alias snode='node --use_strict --throw-deprecation'
alias onode='node --trace_opt --trace_deopt --allow-natives-syntax'

alias log_nginx='tail /var/log/nginx/access.log |  nginx_acces_log_filter | column -t'

alias tokei='tokei -s code'

#git
alias git="LC_ALL=C git"
alias count_lines="git ls-files | xargs cat | wc -l"
alias cmt="git aa && git st && git cm -m" 

alias untar='tar -xzvf'

#tmux
alias Tmv='tmux splitw -h -p'
alias Tms='tmux splitw -v -p'

alias susp='sudo ck-launch-session dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
alias hibernate='sudo ck-launch-session dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Hibernate'

#gcc
alias MI="make indent"

#switch screen
alias to768='xrandr --output LVDS1 --panning "1024x768" --scale "1x1.28"'
alias to600='xrandr --output LVDS1 --panning "1024x600" --scale "1x1"'

#screenshot
alias Scr='sleep 1; xwd -root | xwdtopnm | pnmtopng > "`date`.png"'

#packages
alias packs='sudo dpkg-query -l'

#unzip zip rar unrar
#unzip -j file.zip -d directory

alias alsamixer='alsamixer -V all -c 0'

alias objdump='objdump -w -M intel'
alias readelf='readelf -W'