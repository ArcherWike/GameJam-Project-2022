extends Control

var skladniki = []


func _on_Button_pressed():
	for child in get_children():
		for item_child in child.get_children():
			var regex = RegEx.new()
			regex.compile("^(Item)\\d*$")
			if regex.search(item_child.name):
				skladniki.append(item_child.item_name)
				print(skladniki)
	#if len(skladniki) == 2:
		#DishManager.wykonano["mix"] = [skladniki]
		#print(DishManager.wykonano)
		#skladniki.clear()
		#for child in get_children():
			#var regex = RegEx.new()
		#	regex.compile("^(Slot)\\d*$")
		#	if regex.search(child.name):
			#	child.delFromSlot()
			#	#item_child.queue_free()
	

#func _ready():
	#$Slot24.connect("gui_input", self, "slot_input", [$Slot24])
