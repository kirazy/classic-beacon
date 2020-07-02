-- Copyright (c) 2020 Kirazy
-- Part of Classic Beacon
--     
-- See LICENSE.md in the project directory for license information.

-- Item icon
beacon_item = data.raw["item"]["beacon"]
beacon_item.icon = "__classic-beacon__/graphics/icon/beacon.png"
beacon_item.icon_size = 64
beacon_item.icon_mipmaps = 4

-- Entity icon
beacon = data.raw["beacon"]["beacon"]
beacon.icon = "__classic-beacon__/graphics/icon/beacon.png"
beacon.icon_size = 64
beacon.icon_mipmaps = 4

-- Restore old beacon sprites
beacon.corpse = "medium-remnants"
beacon.graphics_set = {
    module_icons_suppressed = false,

    animation_list = {
        -- Beacon Base
        {
            render_layer = "lower-object-above-shadow",
            always_draw = true,
            animation = {
                layers = {
                    -- Base
                    {
                        filename = "__classic-beacon__/graphics/entity/beacon/beacon-base.png",
                        width = 116,
                        height = 93,
                        shift = util.by_pixel(11, 1.5),
                    },
                    -- Shadow
                    {
                        filename = "__classic-beacon__/graphics/entity/beacon/beacon-base-shadow.png",
                        width = 116,
                        height = 93,
                        shift = util.by_pixel(11, 1.5),
                        draw_as_shadow = true,
                    }
                }
            }
        },
        -- Beacon Antenna
        {
            render_layer = "object",
            always_draw = true,
            animation = {
                layers = {
                    -- Base
                    {
                        filename = "__classic-beacon__/graphics/entity/beacon/beacon-antenna.png",
                        width = 54,
                        height = 50,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-1, -55),
                    },
                    -- Shadow
                    {
                        filename = "__classic-beacon__/graphics/entity/beacon/beacon-antenna-shadow.png",
                        width = 63,
                        height = 49,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(100.5, 15.5),
                        draw_as_shadow = true,
                    }
                }
            }
        }
    }
}

if settings.startup["classic-beacon-do-high-res"].value == true then
    -- Beacon Base
    beacon.graphics_set.animation_list[1].animation.layers[1].hr_version = {
        filename = "__classic-beacon__/graphics/entity/beacon/hr-beacon-base.png",
        width = 232,
        height = 186,
        shift = util.by_pixel(11, 1.5),
        scale = 0.5,
    }
    -- Beacon Base Shadow
    beacon.graphics_set.animation_list[1].animation.layers[2].hr_version = {
        filename = "__classic-beacon__/graphics/entity/beacon/hr-beacon-base-shadow.png",
        width = 232,
        height = 186,
        shift = util.by_pixel(11, 1.5),
        draw_as_shadow = true,
        scale = 0.5,
    }
    -- Beacon Antenna Base
    beacon.graphics_set.animation_list[2].animation.layers[1].hr_version = {
        filename = "__classic-beacon__/graphics/entity/beacon/hr-beacon-antenna.png",
        width = 108,
        height = 100,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(-1, -55),
        scale = 0.5,
    }
    -- Beacon Antenna Shadow
    beacon.graphics_set.animation_list[2].animation.layers[2].hr_version = {
        filename = "__classic-beacon__/graphics/entity/beacon/hr-beacon-antenna-shadow.png",
        width = 126,
        height = 98,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(100.5, 15.5),
        draw_as_shadow = true,
        scale = 0.5,
    }
end

beacon.water_reflection = {
    pictures = {
        filename = "__classic-beacon__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5,
    },
    rotate = false,
    orientation_to_variation = false
}

-- Hide the integration patch
beacon.integration_patch = util.empty_sprite()