if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

set -gx PATH $PATH /home/lukedinh/.local/bin
set -gx PATH $PATH /home/lukedinh/.npm-global
set -gx PATH $PATH /home/lukedinh/.yarn/bin
set -gx XDG_SESSION_DESKTOP hyprland
# tell fish to use LunarVim as default editor
set -gx EDITOR lvim

pokemon-colorscripts -r --no-title

starship init fish | source
