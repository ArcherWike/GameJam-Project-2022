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
var heatingUp = false
var heatingRatio = 1

func heatUp(ratio):
	heatingRatio=ratio
	heatingUp=true

func open():
	add_child(popupScene)

func putItem(from,item):
	from.remove(item)
	inventory.append(item)

func craft():
	for key in recipies:
		if evaluateConditions(recipies[key]["conditions"]):
			recipies[key]["sideEffect"].call_func()
			var item = recipies[key]["item"].call_func()
			Inventory.add_item(item)
			return item
	return null


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var heatingTimer = 0
func _process(delta):
	heatingTimer+=delta
	if delta>1:
		heatingTimer=0
		if temperature<100 and heatingUp: temperature+=heatingRatio
		if temperature>0 and not heatingUp: temperature-=1
		
