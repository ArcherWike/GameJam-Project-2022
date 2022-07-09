extends Control


const Slot = preload("res://World/furniture/Slot/Slot.gd")


var holding_item = null

var Blat_item = "cebula"
	
	
onready var skladnik_roboczy = get_node("Slot24")

	
func _ready():
	for obj in get_children():
		if obj.name == "Slot25":
			#obj.connect("gui_input", self, "slot_input", [obj])
			obj.create(Blat_item)
	
		
	#  for object in fridge_slot.get_children():
		#if object.name[0] == "S":
			#object.connect("gui_input", self, "slot_input", [object])
		
		
var skladnik



func _on_cut_pressed():
	for child in $Slot24.get_children():
		skladnik = child.item_name
		DishManager.wykonano["cut"] = [skladnik]
		skladnik = ""
		$Slot24.delFromSlot()
	print(DishManager.wykonano)
		
func _on_obierz_pressed():
	pass # Replace with function body.


func _on_ubij_pressed():
	pass # Replace with function body.
