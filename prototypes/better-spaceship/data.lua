local wreck_flags =
{
    "placeable-player",
    "player-creation",
    "not-rotatable",
    "placeable-off-grid",
    "not-blueprintable",
    "not-deconstructable"
}

data.raw["container"]["crash-site-spaceship"] = nil

data.extend({
    {
        type = "container",
        name = "crash-site-spaceship",
        icon = "__base__/graphics/icons/crash-site-spaceship.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 600,
        alert_when_damaged = false,
        allow_copy_paste = false,
        default_status = "broken",
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        inventory_size = 5,
        inventory_type = "normal",
        minable =
        {
            mining_time = 2.3
        },
        collision_box = { { -8.7, -3.3 }, { 6.9, 4.5 } },
        selection_box = { { -8.7, -3.3 }, { 6.9, 4.5 } },
        dying_explosion = "nuke-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-ground.png",
            priority = "very-low",
            width = 1330,
            height = 786,
            shift = util.by_pixel(-50, 61),
            dice_x = 4,
            dice_y = 3,
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship.png",
                    priority = "very-low",
                    width = 1228,
                    height = 790,
                    shift = util.by_pixel(-13, 34),
                    dice_x = 4,
                    dice_y = 3,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-shadow.png",
                    priority = "very-low",
                    width = 1340,
                    height = 842,
                    shift = util.by_pixel(-23, 50),
                    scale = 0.5,
                    dice_x = 5,
                    dice_y = 4,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship
})
