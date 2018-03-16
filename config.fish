# fundle插件管理 {
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-proxy'
fundle plugin 'oh-my-fish/plugin-hash'
fundle plugin 'oh-my-fish/plugin-vundle'
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'tuvistavie/fish-fastdir'
fundle plugin 'fisherman/z'
fundle plugin 'fisherman/getopts'
fundle plugin 'akrisrn/fish-gitignore'
fundle plugin 'akrisrn/fish-ls'
fundle plugin 'akrisrn/fish-pureya'
fundle init
# }

# 禁用virtualenv的提示符
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

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

