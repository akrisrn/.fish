# fundle插件管理 {
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-proxy'
fundle plugin 'oh-my-fish/plugin-hash'
fundle plugin 'oh-my-fish/plugin-vundle'
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'tuvistavie/fish-fastdir'
fundle plugin 'fisherman/z'
fundle plugin 'fisherman/getopts'
fundle init
# }

# 设置shell语言
set -x LANG zh_CN.UTF-8

# 服务器ip {
set -x alicecs 120.77.156.58
set -x knowledgecs 47.74.2.154
set -x li158835 139.162.104.35
# }

# proxy插件配置 {
set proxy_host 127.0.0.1:1080
set proxy_auth false
# }

# bobthefish主题右侧时间显示
set -g theme_date_format "+%T"

# WSL启动时执行tmux配置
if test -z "$TMUX"; and test -n "$USE_TMUX"
    if test -n "$ATTACH_ONLY"
        if not tmux a 2>/dev/null
            cd; and exec tmux
        end
        exit
    end

    tmux new-window -c "$PWD" 2>/dev/null; and exec tmux a
    exec tmux
end
# }
