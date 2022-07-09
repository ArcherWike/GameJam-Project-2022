extends Control

var time = 0

var process = false
var licznik = 0

var item = null

func _physics_process(_delta):
	if item == null:
		if object.get_child_count():
			for item_child in object.get_children():
				if item_child.item_name == "kapusta":
					item = "kapusta"
					
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
	#object.create("kapusta")
	#if time < 3 && item == "kapusta":
	#	time += 1
	#elif time == 3 && item == "kapusta":
	#	$Node2D/Timer.stop()
		#print("usmazono")
		
	#	$Node2D/Timer.stop()
	#else:	
		#$Node2D/Timer.stop()
		#




func _on_CheckBox_pressed():
	if !process:
		process = true
		if item == "kapusta":
			$Node2D/Timer.start()
			print("lezy cebula")
	else:
		process = false
		$Node2D/Timer.stop()
