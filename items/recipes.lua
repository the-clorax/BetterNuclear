local shield = "iron-plate"
if mods ["IndustrialRevolution"] then
shield = "lead-plate-special"
elseif mods ["krastorio2"] then
shield = "steel-plate"
end
local waste1 = nil
local waste2 = {shield, 10}
if mods ["IndustrialRevolution"] then
waste1 = {"lead-scrap", 25}
waste2 = {"steel-scrap", 75}
end
	
data.raw.recipe["uranium-processing"].name = "uranium-processing"
data.raw.recipe["uranium-processing"].category = "chemistry"
data.raw.recipe["uranium-processing"].ingredients = 
		{
			{"uranium-ore", 80},
			{"copper-plate", 1},
			{type = "fluid", name = "petroleum-gas", amount = 2000,}
		}
data.raw.recipe["uranium-processing"].results = {
		{"natural-uranium", 10},
		{"stone", 70}
 }
data.raw.recipe["uranium-processing"].icons =
	{
		{
			icon = "__BetterNuclear__/graphics/base-uranium.png",
			tint = {r=0,g=255,b=50,a=255},
			icon_size=64
		},
		{
			icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
			icon_size=64,
			scale = 0.4,
			shift = {-10, 10},
		},
	}

data:extend({
	{
		type = "recipe",
		name = "advanced-nuclear-fuel-reprocessing",
		category = "chemistry",
		energy_required = 10,
		enabled = false,
		crafting_machine_tint = {primary = {r=0,g=1,b=0,a=0}, secondary = {r=0,g=1,b=0,a=0}, tertiary = {r=0,g=1,b=0,a=0}, quaternary = {r=0,g=1,b=0,a=0}},
		ingredients =
		{
		{type = "fluid", name = "sulfuric-acid", amount = 200,},
		{"used-up-uranium-fuel-cell", 4}
		},
		subgroup = "intermediate-product",
		results = 	{
			{"1%-enriched-uranium", 40},
			{"plutonium-239", 1},
			{"neptunium-237", 12},
			{"plutonium-238", 4},
			{"insidious-actinite", 24},
			waste1,
			waste2
		},
		icons =
		{
			{
				icon = "__BetterNuclear__/graphics/used-up-uranium-fuel-cell.png",
				icon_size=64
			},
			{
				icon = "__BetterNuclear__/graphics/Plutonium-239.png",
				icon_size=64,
				scale = 0.4,
				shift = {-10, 10},
			},
		},
	},
	{
		type = "recipe",
		name = "MOX-fuel-reprocessing",
		category = "chemistry",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{type = "fluid", name = "sulfuric-acid", amount = 200,},
			{"used-up-MOX-fuel-cell", 4}
		},
		subgroup = "intermediate-product",
		results = 	{
			{"depleted-uranium", 30},
			{"plutonium-239", 1},
			{"neptunium-237", 12},
			{"plutonium-238", 4},
			{"insidious-actinite", 34},
			waste1,
			waste2
		},
		icons =
		{
			{
				icon = "__BetterNuclear__/graphics/used-up-MOX-fuel-cell.png",
				icon_size=64
			},
			{
				icon = "__BetterNuclear__/graphics/Plutonium-239.png",
				icon_size=64,
				scale = 0.4,
				shift = {-10, 10},
			}
		}
	},
		{
		type = "recipe",
		name = "basic-MOX-fuel-reprocessing",
		category = "centrifuging",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
		{"used-up-MOX-fuel-cell", 1}
		},
		subgroup = "intermediate-product",
		results = 	{
			{"depleted-uranium", 5},
			{"plutonium-238", 1}
		},
		icons =
		{
			{
				icon = "__BetterNuclear__/graphics/used-up-MOX-fuel-cell.png",
				icon_size=64
			},
		}
	},
	{
		type = "recipe",
		name = "MOX-fuel-cell-from-depleted-uranium",
		ingredients = {
			{"plutonium-239", 1},
			{"depleted-uranium", 19},
			{shield, 20}
			},
		result = "MOX-fuel-cell",
		subgroup = "intermediate-product",
		icon = "__BetterNuclear__/graphics/MOX-fuel-cell.png",
		icon_size = 64
	},
		{
		type = "recipe",
		name = "MOX-fuel-cell-from-natural-uranium",
		ingredients = {
			{"plutonium-239", 1},
			{"natural-uranium", 19},
			{shield, 20}
			},
		result = "MOX-fuel-cell",
		subgroup = "intermediate-product",
		icon = "__BetterNuclear__/graphics/MOX-fuel-cell.png",
		icon_size = 64
	},
	{
		type = "recipe",
		name = "advanced-MOX-fuel-reprocessing",
		category = "chemistry",
		energy_required = 10,
		enabled = false,
		crafting_machine_tint = {primary = {r=100,g=0,b=0,a=255}, secondary = {r=255,g=0,b=0,a=255}, tertiary = {r=0,g=0,b=0,a=255}, quaternary = {r=0,g=0,b=0,a=255}},
		ingredients =
		{
		{type = "fluid", name = "sulfuric-acid", amount = 200,},
		{"used-up-MOX-fuel-cell", 4}
		},
		subgroup = "intermediate-product",
		results = 	{
			{"depleted-uranium", 40},
			{"plutonium-239", 1},
			{"neptunium-237", 12},
			{"plutonium-238", 4},
			{"insidious-actinite", 24},
			waste1,
			waste2
		},
		icons =
		{
			{
				icon = "__BetterNuclear__/graphics/MOX-fuel-cell.png",
				icon_size=64
			},
			{
				icon = "__BetterNuclear__/graphics/Plutonium-239.png",
				icon_size=64,
				scale = 0.4,
				shift = {-10, 10},
			}
		}
	}
})
local modifier = "tree"
local price = 1
local core = {
	{
			modifier = "small-",
			price = 0.75
	},
	{
			modifier = "",
			price = 1
	},
	{
			modifier = "big-",
			price = 2.5
	},
	{
			modifier = "very-big-",
			price = 5
	}
}
for _, core in pairs (core) do
	data:extend({
		{
			type = "recipe",
			name = core.modifier.."uranium-demon-core",
			energy_required = 30,
			enabled = false,
			ingredients = {
				{"80%-enriched-uranium", core.price * 20}
			},
			result = core.modifier.."demon-core"
		},
		{
			type = "recipe",
			name = core.modifier.."plutonium-demon-core",
			energy_required = 30,
			enabled = false,
			ingredients = {
				{"plutonium-239", core.price * 16}
			},
			result = core.modifier.."demon-core"
		}
		
	})

table.insert(data.raw["technology"]["atomic-bomb"].effects,{type="unlock-recipe",recipe=core.modifier.."uranium-demon-core"})
table.insert(data.raw["technology"]["atomic-bomb"].effects,{type="unlock-recipe",recipe=core.modifier.."plutonium-demon-core"})
end