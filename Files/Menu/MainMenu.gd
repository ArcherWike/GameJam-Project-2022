extends Control

func _physics_process(_delta):
	if Input.is_action_just_pressed("menu"):
		if !self.visible:
			self.show()
			$"VBoxContainer/NEW GAME".grab_focus()
			get_tree().paused = true
		else:
			self.hide()
			get_tree().paused = false


func _ready():
	$AnimationPlayer.play("menu_mjuzika")


func _on_NEW_GAME_pressed():
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
