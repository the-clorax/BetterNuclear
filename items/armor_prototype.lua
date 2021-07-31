
local DUarmor = table.deepcopy(data.raw["armor"]["power-armor"])
DUarmor.name = "depleted-uranium-armor"
DUarmor.icons = {
  {
    icon = "__base__/graphics/icons/power-armor.png",
    tint = {r=0,g=1,b=0,a=0}
  },
}

DUarmor.resistances = {
  {
    type = "physical",
    decrease = 12,
    percent = 80
  },
  {
    type = "explosion",
    decrease = 50,
    percent = 80
  },
  {
    type = "acid",
    decrease = 0,
    percent = 85
  },
  {
    type = "fire",
    decrease = 20,
    percent = 70
  }
}

DUarmor.inventory_size_bonus = 0

local processor = {"productivity-module-2", 6}
local motors = {"exoskeleton-equipment", 2}
local padding = {"low-density-structure", 20}

if mods ["IndustrialRevolution"] then
processor = {"computer-mk3", 3}
motors = {"gyroscope", 15}
padding = 	{"rubber", 160}
end




local recipe = table.deepcopy(data.raw["recipe"]["power-armor"])
recipe.enabled = true

recipe.name = "depleted-uranium-armor"
recipe.ingredients = {
			processor,
			motors,
			padding,
			{"depleted-uranium", 240}
			}
recipe.result = "depleted-uranium-armor"


data:extend{DUarmor, recipe}