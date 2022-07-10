extends Node

const Slot = preload("res://World/furniture/Slot/Slot.gd")
const Item = preload("res://World/Item/Item.gd")
const spaceAmount = 24

var inventory = {
	1 : ["przecierpomidorowy"],
}

func add_item(item_name):
	for z in range(spaceAmount):
		if inventory.has(z) == false:
			print(z)
			inventory[z] = [item_name]
			return














########################################################
func add_item_to_empty_slot(item: Item, slot: Slot):
	inventory[slot.get_index()] = [item.item_name]

func remove_item(slot: Slot):
	inventory.erase(slot.get_index())
