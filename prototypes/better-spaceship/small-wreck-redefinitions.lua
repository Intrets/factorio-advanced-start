local wreck_flags =
{
    "placeable-player",
    "player-creation",
    "not-rotatable",
    "placeable-off-grid",
    "not-blueprintable",
    "not-deconstructable"
}

return {
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-1",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-1.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -1.0, -1.0 }, { 0.8, 0.8 } },
        selection_box = { { -1.0, -1.0 }, { 0.8, 0.8 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-1-ground.png",
            priority = "high",
            width = 240,
            height = 222,
            shift = util.by_pixel(-18, 12),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-1.png",
                    width = 156,
                    height = 152,
                    shift = util.by_pixel(-9, -1),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-1-shadow.png",
                    width = 178,
                    height = 122,
                    shift = util.by_pixel(8, -3),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship Wreck Small 1
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-2",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-2.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -0.7, 0.0 }, { 0.7, 0.8 } },
        selection_box = { { -0.7, 0.0 }, { 0.7, 0.8 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-2-ground.png",
            priority = "high",
            width = 232,
            height = 154,
            shift = util.by_pixel(-14, 22),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-2.png",
                    width = 146,
                    height = 102,
                    shift = util.by_pixel(-8, 16),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-2-shadow.png",
                    width = 92,
                    height = 76,
                    shift = util.by_pixel(7, 19),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship Wreck Small 2
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-3",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-3.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -0.7, -0.8 }, { 1.2, 0.6 } },
        selection_box = { { -0.7, -0.8 }, { 1.2, 0.6 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-3-ground.png",
            priority = "high",
            width = 274,
            height = 172,
            shift = util.by_pixel(-8, 3),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-3.png",
                    width = 164,
                    height = 148,
                    shift = util.by_pixel(5, -1),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-3-shadow.png",
                    width = 156,
                    height = 114,
                    shift = util.by_pixel(9, -1),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship Wreck Small 3
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-4",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-4.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -0.9, -0.8 }, { 1.1, 0.6 } },
        selection_box = { { -0.9, -0.8 }, { 1.1, 0.6 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-4-ground.png",
            priority = "high",
            width = 256,
            height = 150,
            shift = util.by_pixel(-12, -2),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-4.png",
                    width = 168,
                    height = 142,
                    shift = util.by_pixel(1, -3),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-4-shadow.png",
                    width = 164,
                    height = 100,
                    shift = util.by_pixel(19, -5),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship Wreck Small 4
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-5",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-5.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -0.8, -0.6 }, { 0.9, 0.2 } },
        selection_box = { { -0.8, -0.6 }, { 0.9, 0.2 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-5-ground.png",
            priority = "high",
            width = 252,
            height = 128,
            shift = util.by_pixel(-15, -6),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-5.png",
                    width = 164,
                    height = 120,
                    shift = util.by_pixel(-6, -6),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-5-shadow.png",
                    width = 148,
                    height = 78,
                    shift = util.by_pixel(11, -10),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }, -- Spaceship Wreck Small 5
    {
        type = "simple-entity-with-owner",
        name = "crash-site-spaceship-wreck-small-6",
        localised_name = { "entity-name.crash-site-spaceship-wreck-small" },
        icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-6.png",
        flags = wreck_flags,
        hidden = true,
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        max_health = 50,
        alert_when_damaged = false,
        allow_copy_paste = false,
        resistances =
        {
            { type = "fire", percent = 100 }
        },
        minable =
        {
            mining_time = 0.75
        },
        collision_box = { { -0.4, -0.2 }, { 1.5, 0.8 } },
        selection_box = { { -0.4, -0.2 }, { 1.5, 0.8 } },
        dying_explosion = "medium-explosion",
        integration_patch_render_layer = "decals",
        integration_patch =
        {
            filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-6-ground.png",
            priority = "high",
            width = 276,
            height = 160,
            shift = util.by_pixel(-8, 9),
            scale = 0.5
        },

        picture =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-6.png",
                    width = 166,
                    height = 114,
                    shift = util.by_pixel(10, 9),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/crash-site-spaceship/spaceship-wreck-small-6-shadow.png",
                    width = 160,
                    height = 104,
                    shift = util.by_pixel(27, 11),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    } -- Spaceship Wreck Small 6
}
