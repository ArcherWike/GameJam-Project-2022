extends Node

const Slot = preload("res://World/furniture/Slot/Slot.gd")
const spaceAmount = 24

var inventory = {
	0 : ["apple"],
	1 : ["carrot"]
}

func add_item(item_name):
	for z in range(spaceAmount):
		if inventory.has(z) == false:
			print(z)
			inventory[z] = [item_name]
			return
