extends Control

export(String) var item1
export(String) var item2
export(String) var item3


var sloty = []

func _ready():
	for child in get_children():
		var regex = RegEx.new()
		regex.compile("^(Slot)\\d*$")
		if regex.search(child.name):
			sloty.append(child)
	print(sloty)



	
	
func _process(delta):
	for x in sloty:
		x.create(item1)
		#var i = ran
		
		
