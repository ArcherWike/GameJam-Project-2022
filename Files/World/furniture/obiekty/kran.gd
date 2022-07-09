extends Control





func _on_Button_pressed():
	var object = get_node("Slot24")
	if object.get_child_count():
		for item_child in object.get_children():
			if item_child.item_name == "szklanka":
				object.create("woda")
			if item_child.item_name == "garnek1":
				object.create("garnek2")
		#obj.create(Blat_item)
	
