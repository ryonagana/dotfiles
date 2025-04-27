
if ! shopt -o posix; then
  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi

PS1="\[\e[92m\]($(tput bold)\u@\[\e[92m\]\h)$(tput sgr0):\[\e[94m\]\w\[\e[94m\]\$\e[0m "


export PS1
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++


export PATH=$PATH:/home/user/.local/bin/

test -s  ~/.bash_aliases && source ~/.bashrc_aliases || true

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:/usr/lib/pkgconfig
