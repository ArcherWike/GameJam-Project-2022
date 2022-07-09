extends Control





func _on_Button_pressed():
	var object = get_node("Slot24")
	if object.get_child_count():
		object.create("woda")
		#obj.create(Blat_item)
	
