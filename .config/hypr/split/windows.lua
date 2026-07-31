hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = "rgba(c5c9c5ff)",
            inactive_border = "rgba(282727ff)",
        },

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 8,
        rounding_power = 2,

        active_opacity   = 0.94,
        inactive_opacity = 0.88,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "rgba(12120fcc)",
        },

        blur = {
            enabled   = true,
            size      = 5,
            passes    = 2,
            vibrancy  = 0.08,
        },
    },

    animations = {
        enabled = true,
    },
})
