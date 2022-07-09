extends Control

const Slot = preload("res://World/furniture/Slot/Slot.gd")
onready var fridge_slot = $GridContainer

var holding_item = null


	
func _ready():
	for obj in get_children():
		for obj2 in obj.get_children():
			if obj2.name[0] == "S":
				print(obj2.name)
				obj2.connect("gui_input", self, "slot_input", [obj2])
	load_items()
	
		
	#  for object in fridge_slot.get_children():
		#if object.name[0] == "S":
			#object.connect("gui_input", self, "slot_input", [object])
		
		
func slot_input(event: InputEvent, slot: Slot):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT && event.pressed:
			print(slot)
			if holding_item != null:
				if !slot.item:
					left_click(slot)
					
				else:
					if holding_item.item_name != slot.item.item_name:
						left_click_different_items(event, slot)
			elif slot.item:
				left_click_not_holding(slot)

func _input(_event):
	if holding_item:
		holding_item.global_position = get_global_mouse_position()
				

func load_items():	
	var slots = fridge_slot.get_children()
	for i in range(slots.size()):
		if Inventory.inventory.has(i):
			slots[i].create(Inventory.inventory[i][0])		

func left_click(slot: Slot):
	Inventory.add_item_to_empty_slot(holding_item, slot)
	slot.putIntoSlot(holding_item)
	holding_item = null


func left_click_different_items(event: InputEvent, slot: Slot):
	Inventory.remove_item(slot)
	Inventory.add_item_to_empty_slot(holding_item, slot)
	var temp_item = slot.item
	slot.pickFromSlot()
	temp_item.global_position = event.global_position
	slot.putIntoSlot(holding_item)
	holding_item = temp_item

func left_click_not_holding(slot: Slot):
	Inventory.remove_item(slot)
	holding_item = slot.item
	slot.pickFromSlot()
	holding_item.global_position = get_global_mouse_position()
