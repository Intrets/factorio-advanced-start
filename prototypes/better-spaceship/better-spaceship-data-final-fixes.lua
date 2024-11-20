require("__core__.lualib.circuit-connector-sprites")
require("__intrets-lib__.rework-data")

local wreck_flags =
{
    "placeable-player",
    "player-creation",
    "not-rotatable",
    "placeable-off-grid",
    "not-blueprintable",
    "not-deconstructable"
}

prototype_add_created_script_trigger(data.raw["container"]["crash-site-spaceship-wreck-big-1"], "big-wreck")
prototype_add_created_script_trigger(data.raw["container"]["crash-site-spaceship-wreck-big-2"], "big-wreck")

prototype_add_created_script_trigger(data.raw["container"]["crash-site-spaceship-wreck-medium-1"], "medium-wreck")
prototype_add_created_script_trigger(data.raw["container"]["crash-site-spaceship-wreck-medium-2"], "medium-wreck")
prototype_add_created_script_trigger(data.raw["container"]["crash-site-spaceship-wreck-medium-3"], "medium-wreck")

local small_wrecks = require("small-wreck-redefinitions")

for _, prototype in pairs(small_wrecks) do
    data.raw[prototype.type][prototype.name] = nil
    prototype.type = "container"
    prototype.inventory_size = 1
    prototype.inventory_type = "normal"

    prototype_add_created_script_trigger(prototype, "small-wreck")

    data:extend({
        prototype
    })
end

data.raw["container"]["crash-site-spaceship"] = nil

local function get_hitbox(index)
    index = 1
    return { { -8.7 + 5.2 * index, -3.3 }, { -8.7 + 5.2 * (index + 1), 4.5 } }
end

data.extend({
    {
        type = "electric-energy-interface",
        name = "crash-site-spaceship-left",
        icon = "__base__/graphics/icons/crash-site-spaceship.png",
        energy_source =
        {
            type = "electric",
            buffer_capacity = "500MJ",
            usage_priority = "primary-output",
        },
        energy_production = "500MW",
        energy_usage = "0kW",
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
        minable =
        {
            mining_time = 2.3
        },
        collision_box = get_hitbox(0),
        selection_box = get_hitbox(0),
        dying_explosion = "nuke-explosion",
    },
    {
        type = "roboport",
        name = "crash-site-spaceship-right",
        icon = "__base__/graphics/icons/crash-site-spaceship.png",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            input_flow_limit = "5MW",
            buffer_capacity = "100MJ"
        },
        energy_usage = "500kW",
        recharge_minimum = "40MJ",
        flags = wreck_flags,
        robot_slots_count = 5,
        material_slots_count = 5,
        charging_energy = "500kW",

        stationing_offset = { 0, 0 },
        charging_offsets =
        {
            { -1.5, -1 }, { 1.5, -1 }, { 1.5, 1 }, { -1.5, 1 }
        },

        request_to_open_door_timeout = 15,

        spawn_and_station_height = 0.3,
        charge_approach_distance = 5,

        logistics_radius = 25,
        construction_radius = 55,

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
        collision_box = get_hitbox(1),
        selection_box = get_hitbox(1),
        dying_explosion = "nuke-explosion",
    },

    {
        type = "logistic-container",
        name = "crash-site-spaceship",
        icon = "__base__/graphics/icons/crash-site-spaceship.png",
        flags = wreck_flags,

        max_logistic_slots = 1,
        logistic_mode = "storage",
        circuit_connector = circuit_connector_definitions["chest"],
        circuit_wire_max_distance = default_circuit_wire_max_distance,

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
        inventory_size = 60,
        minable =
        {
            mining_time = 2.3
        },
        collision_box = get_hitbox(2),
        selection_box = get_hitbox(2),
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

        animation =
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
        },
        created_effect = {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "script",
                        effect_id = "crashsite-trigger",
                    },
                }
            }
        }
    },
})
