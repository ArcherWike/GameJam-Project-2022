extends Control

var time = 0

var process = false

var item = null

func _physics_process(_delta):
	if item == null:
		if object.get_child_count():
			for item_child in object.get_children():
				if item_child.item_name == "cebula":
					item = "cebula"
		else:
			item = null
				
var object

func _ready():
	object = get_node("Slot24")
	#$Slot25.create("garnek1")
	
#func _on_Button_pressed():
	#if object.get_child_count():
		#for item_child in object.get_children():
		#	if item_child.item_name == "woda":
		#		object.create("szklanka")
			#	$Slot25.create("garnek2")


func _on_Timer_timeout():
	print(time)
	if time < 3 && item == "cebula":
		time += 1
	elif time == 3 && item == "cebula":
		print("usmazono")	
	else:	
		$Node2D/Timer.stop()
		time = 0




func _on_CheckBox_pressed():
	if !process:
		process = true
		if item == "cebula":
			$Node2D/Timer.start()
			print("lezy cebula")
	else:
		process = false
		$Node2D/Timer.stop()
