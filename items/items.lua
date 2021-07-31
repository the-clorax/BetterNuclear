
data:extend({
		{
		type = "item",
		name = "depleted-uranium",
		icon = "__BetterNuclear__/graphics/base-uranium.png",
		tint = {r=0,g=255,b=170,a=255},
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 200
	},
	{
		type = "item",
		name = "natural-uranium",
		icon = "__BetterNuclear__/graphics/base-uranium.png",
		tint = {r=0,g=255,b=128,a=255},
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 200
	},
	{
		type = "item",
		name = "plutonium-239",
		icon = "__BetterNuclear__/graphics/plutonium-239.png",
		icon_size = 64,
        icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 10
	},
	{
		type = "item",
		name = "plutonium-238",
		icons = {{
		icon = "__BetterNuclear__/graphics/plutonium-239.png",
		tint = {r=0.7,g=0.2,b=0,a=0},
		icon_size = 64
		}},
        icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 100
	},
	{
		type = "item",
		name = "neptunium-237",
		icons = {{
 	   icon = "__BetterNuclear__/graphics/neptunium-237.png",
		icon_size = 64
		}},
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 50
  },
  	{
		type = "item",
		name = "MOX-fuel-cell",
		icon = "__BetterNuclear__/graphics/MOX-fuel-cell.png",
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 50,
		fuel_value = "150GJ",
		fuel_category = "nuclear",
		burnt_result = "used-up-MOX-fuel-cell"
		
	},
	{
		type = "item",
		name = "used-up-MOX-fuel-cell",
		icon = "__BetterNuclear__/graphics/used-up-MOX-fuel-cell.png",
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 20
	},
	{
		type = "item",
		name = "insidious-actinite",
		icons = {{
		icon = "__BetterNuclear__/graphics/neptunium-237.png",
		tint = {r=0,g=0,b=120,a=255},
		icon_size = 64
		}},
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 20
	},
	{
		type = "item",
		name = "small-demon-core",
		icon = "__BetterNuclear__/graphics/demon-core.png",
		icon_size=64,
		scale = 0.4,
		subgroup = "intermediate-product",
		stack_size = 50
	},
	{
		type = "item",
		name = "demon-core",
		icon = "__BetterNuclear__/graphics/demon-core.png",
		icon_size=64,
		scale = 0.6,
		subgroup = "intermediate-product",
		stack_size = 50
	},	
	{
		type = "item",
		name = "big-demon-core",
		icon = "__BetterNuclear__/graphics/demon-core.png",
		icon_size=64,
		scale = 0.8,
		subgroup = "intermediate-product",
		stack_size = 50
	},
	{
		type = "item",
		name = "very-big-demon-core",
		icon = "__BetterNuclear__/graphics/demon-core.png",
		icon_size=64,
		subgroup = "intermediate-product",
		stack_size = 50
	}
})

local uranium = {
	{
			enrichment = 1,
			colorR = 0,
			colorB = 96,
			ingredients = {{"natural-uranium", 12}},
			results = {{"depleted-uranium", 6}, {"1%-enriched-uranium", 6}}
	},
	{
			enrichment = 2,
			colorR = 0,
			colorB = 64,
			ingredients = {{"1%-enriched-uranium", 12}},
			results = {{"natural-uranium", 8}, {"2%-enriched-uranium", 4}}
	},
	{
			enrichment = 5,
			colorR = 0,
			colorB = 32,
			ingredients = {{"2%-enriched-uranium", 12}},
			results = {{"1%-enriched-uranium", 9}, {"5%-enriched-uranium", 3}}
	},
	{
			enrichment = 10,
			colorR = 0,
			colorB = 0,
			ingredients = {{"5%-enriched-uranium", 12}},
			results = {{"2%-enriched-uranium", 8}, {"10%-enriched-uranium", 4}}
	},
	{
			enrichment = 20,
			colorR = 32,
			colorB = 0,
			ingredients = {{"10%-enriched-uranium", 12}},
			results = {{"5%-enriched-uranium", 9}, {"20%-enriched-uranium", 3}}
	},
	{
			enrichment = 40,
			colorR = 64,
			colorB = 0,
			ingredients = {{"20%-enriched-uranium", 12}},
			results = {{"5%-enriched-uranium", 9}, {"40%-enriched-uranium", 3}}
	},
	{
			enrichment = 80,
			colorR = 96,
			colorB = 0,
			ingredients = {{"40%-enriched-uranium", 12}},
			results = {{"20%-enriched-uranium", 9}, {"80%-enriched-uranium", 3}}
	},

}

for _, uranium in pairs (uranium) do
	data:extend({
	{
		type = "item",
		name = uranium.enrichment.."%-enriched-uranium",
		icon = "__BetterNuclear__/graphics/base-uranium.png",
		tint = {r=uranium.colorR,g=255,b=uranium.colorB,a=255},
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {},
		subgroup = "intermediate-product",
		stack_size = 200
	},
	{
		type = "recipe",
		name = "centrifuging-to-"..uranium.enrichment.."%",
		category = "centrifuging",
		energy_required = 15,
		subgroup = "intermediate-product",
		enabled = false,
		ingredients = uranium.ingredients,
		results = uranium.results,
		emissions_multiplier = 0,
		icons =
		{
			{
				icon = "__base__/graphics/icons/centrifuge.png",
				icon_size=64
			},
			{
				icon = "__BetterNuclear__/graphics/base-uranium.png",
				tint = {r=uranium.colorR,g=255,b=(uranium.colorB + 32),a=255},
				icon_size=64,
				scale = 0.4,
				shift = {-10, 10},
			},
			{
				icon = "__BetterNuclear__/graphics/base-uranium.png",
				tint = {r=(uranium.colorR + 32),g=255,b=uranium.colorB,a=255},
				icon_size=64,
				scale = 0.4,
				shift = {-10, -10},
			},
		}
	},
	})
end
