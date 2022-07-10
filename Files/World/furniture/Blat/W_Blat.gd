extends Control


const Slot = preload("res://World/furniture/Slot/Slot.gd")


var holding_item = null

var Blat_item = "cebula"
	
	
onready var skladnik_roboczy = get_node("Slot24")

	
func _ready():
	pass
	#for obj in get_children():
		#if obj.name == "Slot25":
			#obj.connect("gui_input", self, "slot_input", [obj])
			#obj.create(Blat_item)
	
		
	#  for object in fridge_slot.get_children():
		#if object.name[0] == "S":
			#object.connect("gui_input", self, "slot_input", [object])
		
		
var skladnik



#func _on_cut_pressed():
	#for child in $Slot24.get_children():
	#	skladnik = child.item_name
	#	DishManager.wykonano["cut"] = [skladnik]
	#	skladnik = ""
#		$Slot24.delFromSlot()
#	print(DishManager.wykonano)


func krojenie():
	if skladnik_roboczy.get_child_count():
		for item_child in skladnik_roboczy.get_children():
			if item_child.item_name == "cebula1":
				skladnik_roboczy.create("cebulka_pokrojona")
