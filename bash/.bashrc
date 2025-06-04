export XDG_CONFIG_HOME="$HOME"/.config

if [ -f $HOME:/opt/nvim-linux-x86_64/bin/nvim ]; then
  export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
fi

if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi
