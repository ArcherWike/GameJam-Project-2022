extends Node2D


var open = 0 #false/ 1-open/ close

func _ready():
	$Fridge/Background.hide()
	$Fridge/szafka.hide()
	#$Fridge/miska.hide()

func close():
	$Fridge/Background.hide()
	$Fridge/szafka.hide()
	$Fridge/miska.hide()
	open = 0


func _input(event):
	if event.is_action_pressed("interaction") and open >= 2:
		close()
			
#func _input(event):
	#if event.is_action_pressed("interaction"):
	#	interaction = true
	#	print("ad")
	#else:
	#	interaction = false

#func _on_Furnace_body_entered(body):
	#szuflada = true
	#if interaction and szuflada:
		
		#$Background.show()
		#$Fridge/szuflada.show()
		
	#print("XD")
	#Inventory.add_item("carrot")
	#print(Inventory.inventory)
	


#func _on_Furnace2_body_entered(body):
	#$Fridge.load_items()


#func _on_Furnace_body_exited(body):
	#szuflada = false


func _on_B_szafka_szafka():
	$Fridge/Background.show()
	$Fridge/szafka.show()
	open += 1


func _on_B_miska_miska():
	$Background.show()
	$Fridge/miska.show()
	open += 1
