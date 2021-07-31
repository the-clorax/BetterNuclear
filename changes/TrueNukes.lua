local NeutronReflector = "steel-plate"
local artilleryModifier
local price = 0
local shield = "iron-plate"
if mods ["IndustrialRevolution"] then
shield = "lead-plate-special"
elseif mods ["krastorio2"] then
shield = "steel-plate"
local price = 1
local core = "core"
local plutoniumArtillery = nil
local artilleryModifier = "fluffy turtle"
end


data.raw.recipe["californium-processing"].ingredients = {
	{"plutonium-238", 5},
	{"20%-enriched-uranium", 16}
}
data.raw.recipe["californium-processing"].results = {
	{"plutonium-238", 1},
	{"insidious-actinite", 4},
	{"californium", 2},
	{"5%-enriched-uranium", 14}
} 

local artillery = {
	{
			Modifier = "small-",
			price = 0.75,
			core = "small-"
	},
	{
			Modifier = "",
			price = 1,
			core = ""
	},
	{
			Modifier = "big-",
			price = 2.5,
			core = "big-"
	},
	{
			Modifier = "very-big-",
			price = 8,
			core = ""
	}
}

for _, artillery in pairs (artillery) do
	data.raw.recipe["TN-"..artillery.Modifier.."atomic-artillery-shell"].ingredients = {
		{shield, artillery.price * 100},
		{"explosives", artillery.price * 100},
		{artillery.core.."demon-core", 1},
		{"processing-unit", artillery.price * 20}
	}
end

local rocket = {
	{
			Modifier = "",
			price = 1,
			core = "small-"
	},
	{
			Modifier = "big-",
			price = 2.5,
			core = ""
	},
	{
			Modifier = "very-big-",
			price = 8,
			core = "big-"
	}
}
for _, rocket in pairs (rocket) do
	data.raw.recipe["TN-"..rocket.Modifier.."atomic-artillery-shell"].ingredients = {
		{shield, rocket.price * 10},
		{"explosives", rocket.price * 10},
		{rocket.core.."demon-core", 1},
		{"rocket-control-unit", 2},
		{"rocket-fuel", rocket.price * 20}
	}
end

table.insert(data.raw.recipe["TN-very-big-atomic-artillery-shell"].ingredients,{"FOGBANK", 20})
table.insert(data.raw.recipe["TN-very-big-atomic-artillery-shell"].ingredients,{"tritium-canister", 5})

if mods ["IndustrialRevolution"] then
	data.raw.recipe["megaton-nuke"].ingredients = {{"big-demon-core", 1}, {"explosives", 500}, {"FOGBANK", 50}, {"charged-advanced-battery", 40}, {"computer-mk3", 20}, {"chromium-plate-heavy", 200}, {"refined-concrete", 1000}}
end