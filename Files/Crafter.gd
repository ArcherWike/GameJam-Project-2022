extends Node
var popupScene
var item

func evaluateConditions(array):
	for i in array:
		if not i.call_func(): return false
	return true

var inventory = []
var temperature = 0
var recipies = {}

func open():
	add_child(popupScene)

func putItem(from,item):
	from.remove(item)
	inventory.append(item)

func craft():
	for key in recipies:
		if evaluateConditions(recipies[key]["conditions"]):
			recipies[key]["sideEffect"].call_func()
			return recipies[key]["item"].call_func()
	return null


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
