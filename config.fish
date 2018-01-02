fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-proxy'
fundle plugin 'oh-my-fish/plugin-hash'
fundle plugin 'oh-my-fish/plugin-vundle'
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle init

set -x LANG zh_CN.UTF-8

set proxy_host 127.0.0.1:1080
set proxy_auth false

if test -z "$TMUX"; and test -n "$USE_TMUX"
    if test -n "$ATTACH_ONLY"
        if tmux a 2>/dev/null
        else
            cd; and exec tmux
        end
        exit
    end

    tmux new-window -c "$PWD" 2>/dev/null; and exec tmux a
    exec tmux
end
