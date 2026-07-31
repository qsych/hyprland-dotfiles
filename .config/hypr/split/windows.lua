hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 20,

        border_size = 1,

        col = {
            active_border   = "rgba(ffffffff)",
            inactive_border = "rgba(000000ff)",
        },

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 8,
        rounding_power = 2,

        active_opacity   = 0.88,
        inactive_opacity = 0.88,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 4,
            color        = 0xffffffff,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },

    },

    animations = {
        enabled = true,
    },
})
