alias relay="ssh liupengcheng@your.domain.relay"
export PATH=$PATH:~/bin

# set arc editor
export EDITOR=vim
# 在~/.bashrc里添加下面这一行，并在命令行执行
alias arc='LC_ALL=C arc'
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
alias enable_proxy="export http_proxy=http://your.httpproxy.host[:port];export https_proxy=http://your.httpproxy.host[:port]"
alias disable_proxy="unset http_proxy;unset https_proxy"
