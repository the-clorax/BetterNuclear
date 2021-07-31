if mods["IndustrialRevolution"] then 
  	shield = "lead-plate-special"
elseif mods["krastorio2"] then
	shield = "steel-plate"
else
	shield = "iron-plate"
  end
  
data.raw.recipe["uranium-fuel-cell"].ingredients = {{shield, 10}, {"2%-enriched-uranium", 20}}
data.raw.recipe["uranium-fuel-cell"].result_count = 1
data.raw.recipe["nuclear-fuel-reprocessing"].ingredients = {{"uranium-fuel-cell", 1}}
data.raw.recipe["nuclear-fuel-reprocessing"].results = {{"1%-enriched-uranium", 5}, {"plutonium-238", 1}}
data.raw.recipe["nuclear-fuel-reprocessing"].result = nil
data.raw.recipe["nuclear-fuel-reprocessing"].emissions_multiplier = 30
data.raw.item["uranium-fuel-cell"].fuel_value = "100GJ"
data.raw.recipe["atomic-bomb"].ingredients = {
	{"explosives", 40},
	{"rocket-control-unit", 2},
	{"demon-core", 1},
	{shield, 30}
}
