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
	#  for object in fridge_slot.get_children():
		#if object.name[0] == "S":
			#object.connect("gui_input", self, "slot_input", [object])
		
		
func slot_input(event: InputEvent, slot: Slot):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT && event.pressed:
			if holding_item != null:
				if !slot.item:
					slot.putIntoSlot(holding_item)
					holding_item = null
				else:
					var temp_item = slot.item
					slot.pickFromSlot()
					temp_item.global_position = event.global_position
					slot.putIntoSlot(holding_item)
					holding_item = temp_item
			elif slot.item:
				holding_item = slot.item
				slot.pickFromSlot()
				holding_item.global_position = get_global_mouse_position()

func _input(_event):
	if holding_item:
		holding_item.global_position = get_global_mouse_position()
				
