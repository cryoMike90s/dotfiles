export XDG_CONFIG_HOME="$HOME"/.config

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

shopt -s cdspell

if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi
