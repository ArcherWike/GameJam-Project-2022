extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_parent().recipies)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureRect_gui_input(event):
	if (event is InputEventMouseButton):
		if event.button_index == BUTTON_LEFT and event.pressed:
			var item = get_parent().craft()
			print(item)


func _on_Button2_gui_input(event):
	get_parent().heatUp(1)
