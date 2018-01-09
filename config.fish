# fundle插件管理 {
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-proxy'
fundle plugin 'oh-my-fish/plugin-hash'
fundle plugin 'oh-my-fish/plugin-vundle'
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'tuvistavie/fish-fastdir'
fundle plugin 'fisherman/z'
fundle plugin 'fisherman/getopts'
fundle plugin 'akrisrn/pureya'
fundle init
# }

# 设置shell语言
set -x LANG zh_CN.UTF-8

# proxy插件配置 {
set proxy_host 127.0.0.1:1080
set proxy_auth false
# }

# bobthefish主题右侧时间显示
set -g theme_date_format "+%T"

# 添加不纳入git的自定义函数目录
set fish_function_path ~/.config/fish/functions/customs $fish_function_path

# wsl-terminal启动时运行tmux
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
