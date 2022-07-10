extends Control

export(String) var item1
export(String) var item2
export(String) var item3


var sloty = []

var time
func _ready():
	for child in get_children():
		var regex = RegEx.new()
		regex.compile("^(Slot)\\d*$")
		if regex.search(child.name):
			sloty.append(child)
	sloty[0].create(item1)
	sloty[1].create(item2)
	sloty[2].create(item3)
		#var i = ran
		

func _on_Timer_timeout():
	sloty[0].create(item1)
	sloty[1].create(item2)
	sloty[2].create(item3)
