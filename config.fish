# vim:set ts=4 sw=4 et tw=100: expandtab

# Source Starship prompt
starship init fish | source

# Expand PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.yarn/bin"

# Default Editor
set DEFAULT_VIM_BIN (which vim)
function vim
    if type -q nvim
        nvim "$argv"
    else
        eval "$DEFAUT_VIM_BIN $argv"
    end
end

export EDITOR="nvim"

# Alias: xdg-open
switch (uname)
case Linux
    alias open='xdg-open'
end
