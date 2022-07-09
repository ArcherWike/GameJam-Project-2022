extends Node2D


var open = 0 #false/ 1-open/ close

#onready var Menu = preload("res://Menu/Menu.tscn").instance()


func chowaj():
	$Fridge/blat.hide()
	$Fridge/miska.hide()
	$Fridge/szuflada.hide()
	$Fridge/piekarnik.hide()
	$Fridge/kran.hide()	
	$Fridge/Przelewanie.hide()
	$Fridge/Smazenie.hide()
	

			

func _ready():
	$Background.hide()
	chowaj()
	#Music.play("muzyka_gamePlay")
	#add_child(Menu)

func close():
	$Obiekty.show()
	chowaj()
	#$Fridge/Piekarnik.hide()
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
	$Background.show()
	$Fridge/szafka.show()
	$Obiekty.hide()
	open += 1


func _on_B_miska_miska():
	$Background.show()
	$Fridge/miska.show()
	$Obiekty.hide()
	open += 1


func _on_Piekarnik_piekarnik():
	$Background.show()
	#$Fridge/Piekarnik.show()
	$Obiekty.hide()
	open += 1

func Hide_all():
	$Obiekty.hide()



func _on_mebelCollision_obiekt(mebel):
	var obiekt = get_node("Fridge/"+ mebel)
	obiekt.show()
	open += 1
	print(mebel, obiekt.show())

