extends Control

var object
signal do

func _ready():
	object = get_node("Slot24")
	$Slot25.create("garnek1")
	
func _on_Button_pressed():
	if object.get_child_count():
		for item_child in object.get_children():
			if item_child.item_name == "woda":
				object.create("szklanka")
				$Slot25.create("garnek2")


func _process(delta):
	emit_signal("do")
	$Slot1.create("szklanka")
		#var i = ran
