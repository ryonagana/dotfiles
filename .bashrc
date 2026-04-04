# .bashrc
shopt -s checkwinsize

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
 export SYSTEMD_PAGER=

# User specific aliases and functions
#PS1="\[\e[92m\][\($(tput bold)\]\u@\[\e[92m\]\h)[\$(tput sgr0)\]:\[\e[94m\]\w\[\e[94m\]\$\e[0m "
PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 4)\]\w\[$(tput setaf 4)\]\$\[$(tput sgr0)\] "


export PS1
export CC=/usr/bin/gcc   # Substitua /usr/bin/gcc pelo caminho real do seu gcc
export CXX=/usr/bin/g++   # Substitua /usr/bin/g++ pelo caminho real do seu g++

export HISTSIZE=4000
export HISTFILESIZE=4000

export PATH=$PATH:/home/user/.local/bin/:/opt/clangd-20/bin:$HOME/.cargo/bin

test -s  ~/.bash_aliases && source ~/.bash_aliases || true

export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig:/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
#export PKG_CONFIG_PATH="/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH"

export DISTROBOX_CONTAINER_MANAGER=podman

. "/home/user/.deno/env"
source /home/user/.local/share/bash-completion/completions/deno.bash
