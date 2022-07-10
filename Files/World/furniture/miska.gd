extends Control

var skladniki = []

signal do

func del_item():
	for child in get_children():
		var regex = RegEx.new()
		regex.compile("^(Slot)\\d*$")
		if regex.search(child.name):
			child.delFromSlot()


func _on_Button_pressed():
	for child in get_children():
		for item_child in child.get_children():
			var regex = RegEx.new()
			regex.compile("^(Item)\\d*$")
			if regex.search(item_child.name):
				skladniki.append(item_child.item_name)
				print(skladniki)
				
	if "cebulka złocistapokrojona" and "sol" and "MiesoWieprzowe" and "bulka_tarta" and "pieprz" in skladniki:
		if len(skladniki) == 5:
			del_item()
			emit_signal("do")				
			$Slot24.create("mixdogolabkow")
			
		skladniki.clear()
	elif "mixdogolabkow" and "sol" and "ryz" in skladniki:
		if len(skladniki) == 3:
			del_item()
			emit_signal("do")				
			$Slot24.create("mixwszystkiego")
		skladniki.clear()
	#elif "przecierpomidorowy" and "sol" and "bulion" in skladniki:
	#	if len(skladniki) == 3:
	#		del_item()
	#		$Slot24.create("mixdogolabkow")
	elif "mixdogolabkow" and "lisc" in skladniki:
		if len(skladniki) == 2:
			del_item()
			emit_signal("do")
			$Slot24.create("golabkinieupieczone")
		skladniki.clear()
	else:
		skladniki.clear()
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
	
