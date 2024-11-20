require("__intrets-lib__.rework-control")

local starter_blueprints = require("starter-blueprints")

local function process_wreck_part(entity)
    entity.force = "player"

    local inventory = entity.get_inventory(1)
    inventory.clear()

    inventory.insert("iron-plate")

    local position = entity.position

    removal_plan = {
        [1] = {
            id = {
                name = "iron-plate"
            },
            items = {
                in_inventory = {
                    [1] = {
                        inventory = defines.inventory.chest,
                        stack = 0,
                        count = 100,
                    }
                }
            },
        }
    }

    local proxy = entity.surface.create_entity {
        name = "item-request-proxy",
        force = "player",
        target = entity,
        position = position,
        removal_plan = removal_plan,
        modules = {},
    }
end

rework_control.on_script_trigger("spawn spaceship parts", "big-wreck", function(event)
    process_wreck_part(event.cause_entity)
end)

rework_control.on_script_trigger("spawn spaceship parts", "medium-wreck", function(event)
    process_wreck_part(event.cause_entity)
end)

rework_control.on_script_trigger("spawn spaceship parts", "small-wreck", function(event)
    process_wreck_part(event.cause_entity)
end)

rework_control.on_script_trigger("spawn spaceship parts", "crashsite-trigger", function(event)
    local surface_index = event.surface_index
    local surface = game.surfaces[surface_index]

    local spaceship = event.cause_entity
    local position = spaceship.position

    local force = spaceship.force

    local storage = spaceship
    local power = surface.create_entity { name = "crash-site-spaceship-left", position = { position.x - 5.2, position.y }, force = force }
    local roboport = surface.create_entity { name = "crash-site-spaceship-right", position = { position.x + 5.2, position.y }, force = force }

    surface.create_entity { name = "medium-electric-pole", position = { position.x + 1, position.y + 7 }, force = force }
    surface.create_entity { name = "medium-electric-pole", position = { position.x - 7, position.y + 5 }, force = force }

    roboport.get_inventory(1).insert({ name = "construction-robot", count = 20 })
    roboport.energy = 500000000

    local inventory = storage.get_inventory(1)
    local item_stack = inventory.find_empty_stack()
    if item_stack ~= nil then
        item_stack.import_stack(starter_blueprints[1])
        item_stack.build_blueprint {
            position = { position.x - 3, position.y + 14 },
            surface = surface,
            force = force,
            build_mode = defines.build_mode.forced,
        }
        local required_items = item_stack.cost_to_build

        local skip = {
            ["stone-furnace"] = true,
            ["boiler"] = true,
            ["steam-engine"] = true,
            ["pipe"] = true,
        }

        for _, item in pairs(required_items) do
            if skip[item.name] == nil then
                item.count = item.count * 1.4
                inventory.insert(item)
            end
        end

        inventory.remove(item_stack)

        inventory.insert({ name = "electronic-circuit", count = 736 })
        inventory.insert({ name = "medium-electric-pole", count = 36 })
        inventory.insert({ name = "transport-belt", count = 312 })
        inventory.insert({ name = "inserter", count = 12 })
        inventory.insert({ name = "long-handed-inserter", count = 5 })
    end
end)
