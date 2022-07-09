extends Node2D

var IsOpen = false


#func _on_Area2D_input_event(viewport, event, shape_idx):
	#if event is InputEventMouseButton:
	#	if event.button_index == BUTTON_LEFT && event.pressed:
		#	print("DSA")
		#	if IsOpen:
			#	IsOpen = false
		#		$klapa.hide()
		#	else:
			#	IsOpen = true
			#	$klapa.show()

#right_click
func _input(event):
	if event.is_action_pressed("right_click"):
		if IsOpen:
			IsOpen = false
			$FridgeDoor.hide()
		else:
			IsOpen = true
			$FridgeDoor.show()

#func _on_Area2D_mouse_entered():
	#print("DSA")
	#if IsOpen:
	#	IsOpen = false
	#	$FridgeDoor.hide()
	#else:
		#IsOpen = true
	#	$FridgeDoor.show()
