extends Panel



var ItemClass = preload("res://World/furniture/Slot/Item.tscn")
var item = null


#func _ready():
#	if get_children():
#		for child in get_children():
#			create(child.item_name)
#			print("ta")
		#create(self.get_child().item_name)

func delFromSlot():
	remove_child(item)
	item = null	
		
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
	print(item.item_name)
	
	
	
func create(item_name):
	if item == null:
		item = ItemClass.instance()
		add_child(item)
		item.setItem(item_name)
	else:
		item.setItem(item_name)
