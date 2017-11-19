extends Node2D

export(int, "HealthPot", "StrengthPot", "SpeedPots", "FireSpell", "GrabSpell", "FreezeSpell", "CookedSteak", "CookedChicken", "Cheese") var type setget setType, getType

func getType():
	return type

func setType(newType):
	type = newType
	if typeof(type) == TYPE_STRING:
		get_node("Name").set_text(type)
		if type == "HealthPot":
			get_node("Description").add_text("This drink heal your wounds!")
		elif type == "StrengthPot":
			get_node("Description").add_text("This drink give you newfound strength!")
		elif type == "SpeedPot":
			get_node("Description").add_text("This drink increases your reaction speed!")
		elif type == "FireSpell":
			get_node("Description").add_text("Shoot a fire ball at the closest enemy!")
		elif type == "GrabSpell":
			get_node("Description").add_text("Collect the closest item to you!")
		elif type == "FreezeSpell":
			get_node("Description").add_text("Stop the closest enemy for a turn!")
		elif type == "CookedSteak":
			get_node("Description").add_text("Mmmh suculent steak...")
		elif type == "CookedChicken":
			get_node("Description").add_text("Chicken... down here? Don't complain!")
		elif type == "Cheese":
			get_node("Description").add_text("The cheese still kind of looks in date...")