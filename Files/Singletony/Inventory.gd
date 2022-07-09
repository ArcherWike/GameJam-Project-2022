extends Node

const Slot = preload("res://World/furniture/Slot/Slot.gd")
const Item = preload("res://World/Item/Item.gd")
const spaceAmount = 24

var inventory = {
	0 : ["cebula1"],
	1 : ["szklanka"],
	2 : ["sol"],
	3 : ["pieprz"],
	4 : ["MiesoWieprzowe"],
	5 : ["bulka_tarta"],
	6 : ["kapusta"],
	7 : ["przecierpomidorowy"],
	8 : ["bulion"],
	9 : ["golabkinieupieczone"]
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
