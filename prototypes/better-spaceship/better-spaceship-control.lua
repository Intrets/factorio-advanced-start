require("__intrets-lib__.rework-control")

rework_control.on_script_trigger("spawn spaceship parts", "crashsite-trigger", function(event)
    local surface_index = event.surface_index
    local surface = game.surfaces[surface_index]

    local spaceship = event.cause_entity
    local position = spaceship.position

    local force = spaceship.force

    local storage = spaceship
    local power = surface.create_entity { name = "crash-site-spaceship-left", position = { position.x - 5.2, position.y }, force = force }
    local roboport = surface.create_entity { name = "crash-site-spaceship-right", position = { position.x + 5.2, position.y }, force = force }

    storage.get_inventory(1).insert({ name = "assembling-machine-3", count = 5 })
    storage.get_inventory(1).insert({ name = "substation", count = 5 })
    roboport.get_inventory(1).insert({ name = "construction-robot", count = 10 })


    local create_ghost = function(name, x, y)
        surface.create_entity { name = "entity-ghost", inner_name = name, position = { position.x + x, position.y + 5.5 + y }, force = force }
    end

    create_ghost("substation", 0, 0)

    create_ghost("assembling-machine-3", 5, 1)
    create_ghost("assembling-machine-3", 8, 1)
    create_ghost("assembling-machine-3", 11, 1)

    roboport.energy = 500000000
end)
