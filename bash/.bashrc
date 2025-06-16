export XDG_CONFIG_HOME="$HOME"/.config

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi
