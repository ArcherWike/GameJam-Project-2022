extends "res://Crafter.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"s

func can_make_pierogi():
	return true
func pierogi_sideeffect():
	print("sideeffect")
func get_item():
	return "pierogi"

func _ready():
	popupScene = preload("res://Menu/Menu.tscn").instance()
	recipies={
		"pierogi": {
			"conditions":[
				funcref(self, "can_make_pierogi")
			],
			"sideEffect": funcref(self,"pierogi_sideeffect"),
			"item": funcref(self,"get_item")
		}
	}
	print(craft())


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
