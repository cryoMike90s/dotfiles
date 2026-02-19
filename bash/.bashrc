export XDG_CONFIG_HOME="$HOME"/.config

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/.local/bin"

shopt -s cdspell

if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi

# Claude Code certificate configuration
export NODE_EXTRA_CA_CERTS="$HOME/.config/cloudflare-certs/combined-ca-bundle.pem"
