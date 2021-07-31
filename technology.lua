data.raw.technology["uranium-processing"].effects = {
				{
					type = "unlock-recipe",
					recipe = "uranium-processing"
				},
                {
                    type = "unlock-recipe",
                    recipe = "centrifuging-to-1%"
                },
                {
                    type = "unlock-recipe",
                    recipe = "centrifuging-to-2%"
                },
                {
                    type = "unlock-recipe",
                    recipe = "centrifuge"
                },
                {
                    type = "unlock-recipe",
                    recipe = "uranium-fuel-cell"
                }
            }
data.raw.technology["kovarex-enrichment-process"].effects = {
	{
		type = "unlock-recipe",
		recipe = "centrifuging-to-5%"
	},
	{
		type = "unlock-recipe",
		recipe = "centrifuging-to-10%"
	},
	{
		type = "unlock-recipe",
		recipe = "centrifuging-to-20%"
	},
	{
		type = "unlock-recipe",
		recipe = "centrifuging-to-40%"
	},
	{
		type = "unlock-recipe",
		recipe = "centrifuging-to-80%"
	}
	}
data:extend({
	{
        type = "technology",
        name = "depleted-uranium-armor",
        icon = "__base__/graphics/technology/power-armor.png",
        icon_size = 256,
        order = "e-a-c",
		effects = {
			{
			type = "unlock-recipe",
			recipe = "depleted-uranium-armor"
			},
		}, 
        prerequisites = {"uranium-processing", "power-armor"},
        unit = {
            count = 700,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1},
            },
            time = 30
        },
    },
        {
            type = "technology",
            name = "advanced-nuclear-waste-processing",
            icon = "__BetterNuclear__/graphics/advanced-uranium-fuel-reprocessing.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "advanced-nuclear-fuel-reprocessing"
                }
            },
            prerequisites = {"nuclear-fuel-reprocessing", "sulfur-processing"},
            unit = {
                count = 1000,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 45,
            }
        },
		{
			type = "technology",
			name = "plutonium-processing-1",
            icon = "__BetterNuclear__/graphics/basic-MOX-fuel-reprocessing.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "MOX-fuel-cell-from-depleted-uranium"
                },
				{
                    type = "unlock-recipe",
                    recipe = "MOX-fuel-cell-from-natural-uranium"
                },
				{
                    type = "unlock-recipe",
                    recipe = "basic-MOX-fuel-reprocessing"
                }
            },
            prerequisites = {"advanced-nuclear-waste-processing"},
            unit = {
                count = 2000,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 60,
		}
	},
		{
			type = "technology",
			name = "plutonium-processing-2",
            icon = "__BetterNuclear__/graphics/advanced-MOX-fuel-reprocessing.png",
            icon_size = 256,
            effects = {
				{
                    type = "unlock-recipe",
                    recipe = "advanced-MOX-fuel-reprocessing"
                },
            },
            prerequisites = {"plutonium-processing-1"},
            unit = {
                count = 3000,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 60,
			}
		}
	})	