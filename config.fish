# vim:set ts=4 sw=4 et tw=100: expandtab

# Expand PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.yarn/bin"

# Default Editor
set DEFAULT_VIM_BIN (which vim)
if type -q nvim
    alias vim='nvim'
else

export EDITOR='nvim'

# Alias: xdg-open
switch (uname)
case Linux
    alias open='xdg-open'
end

# Source Starship prompt
starship init fish | source
