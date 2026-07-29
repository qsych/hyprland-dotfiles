function fish_greeting
    fastfetch
end

if status is-interactive
    alias ls="eza"
    alias ll="eza -lah"
    alias tree="eza --tree"

    alias grep="rg"
    alias find="fd"
end

if status is-interactive
    if uwsm check may-start
        exec uwsm start hyprland-uwsm.desktop
    end
end
