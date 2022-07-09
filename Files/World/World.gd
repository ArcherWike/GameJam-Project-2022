extends Node2D


func _ready():
	$Background.hide()
	$Fridge/szuflada.hide()

func _on_Furnace_body_entered(body):
	#$Background.show()
	#$Fridge/szuflada.show()
	print("XD")
	Inventory.add_item("carrot")
	print(Inventory.inventory)
	


func _on_Furnace2_body_entered(body):
	$Fridge.load_items()
