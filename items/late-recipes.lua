local shield = "iron-plate"
if mods ["IndustrialRevolution"] then
shield = "lead-plate-special"
elseif mods ["krastorio2"] then
shield = "steel-plate"
end
data:extend(
{
	{
		type = "recipe",
		name = "plutonium-atomic-bomb",
		energy_required = 120,
		enabled = false,
		ingredients = {
			{"plutonium-239", 20},
			{"rocket-control-unit", 10},
			{"explosives", 10},
			shield
		},
		result = "atomic-bomb",
		icons =
		{
			{
				icon = "__base__/graphics/icons/atomic-bomb.png",
				icon_size=64,
				tint = {r=100,g=75,b=0,a=0}
			},
			{
				icon = "__BetterNuclear__/graphics/Plutonium-239.png",
				icon_size=64,
				scale = 0.4,
				shift = {-10, 10},
			},
		}
	},
})