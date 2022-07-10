extends Control

export(String) var item1
export(String) var item2
export(String) var item3


var sloty = ["ryz", "ryz", "ryz"]

func _ready():
	sloty.clear()
	for child in get_children():
		var regex = RegEx.new()
		regex.compile("^(Slot)\\d*$")
		if regex.search(child.name):
			sloty.append(child)
	print(sloty)



	
	
func _process(_delta):
	sloty[0].create(item1)
	sloty[1].create(item2)
	sloty[2].create(item3)
		#var i = ran
		
