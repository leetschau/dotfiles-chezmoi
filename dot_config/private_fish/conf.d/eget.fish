if status is-interactive && test -x $HOME/.local/opt/eget/eget
    set -x PATH "$HOME/.local/opt/eget" $PATH
    set -x EGET_CONFIG $HOME/.local/opt/eget/eget.toml
end
