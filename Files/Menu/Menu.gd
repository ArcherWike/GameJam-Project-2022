extends Control

onready var Music = get_node("Audio/AnimationAudio")

func _physics_process(_delta):
	if Input.is_action_just_pressed("menu"):
		if !self.visible:
			self.show()
			$VBoxContainer/Continue.grab_focus()
			get_tree().paused = true
			Music.stop()
			#$AnimationPlayer.play("menu_mjuzika")
			Music.set_current_animation("m_menu")
			Music.play("m_menu")
		else:
			self.hide()
			Music.stop()
			Music.set_current_animation("muzyka_gamePlay")	
			Music.play("muzyka_gamePlay")
			#Music.stop()
			#get_tree().paused = false
			#$AnimationPlayer.stop("menu_mjuzika")
			print(Music.is_playing()) 
func _ready():
	self.hide()
	Music.stop()
	Music.set_current_animation("muzyka_gamePlay")	
	Music.play("muzyka_gamePlay")

func _on_Continue_pressed():
	get_tree().paused = false
	self.visible = false

func _on_NEW_GAME_pressed():
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
