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
	
