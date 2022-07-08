extends Panel



var ItemClass = preload("res://World/furniture/Slot/Item.tscn")
var item = null


func _ready():	
	if randi()%2 == 0:
		item = ItemClass.instance()
		add_child(item)
	
		
func pickFromSlot():
	remove_child(item)
	var inventoryNode = find_parent("Fridge")
	inventoryNode.add_child(item)
	item = null
	
	
func putIntoSlot(new_item):
	item = new_item
	item.position = Vector2(0,0)
	var inventoryNode = find_parent("Fridge")
	inventoryNode.remove_child(item)
	add_child(item)
	
	
func create(item_name):
	if item == null:
		item = ItemClass.instance()
		add_child(item)
		item.setItem(item_name)
	else:
		item.setItem(item_name)
