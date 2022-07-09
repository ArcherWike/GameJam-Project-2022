extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Isplayer = false
signal piekarnik

# Called when the node enters the scene tree for the first time.

func _input(event):
	if event.is_action_pressed("interaction") and Isplayer == true:
		emit_signal("piekarnik")
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Isplayer = true


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		Isplayer = false
	
	



