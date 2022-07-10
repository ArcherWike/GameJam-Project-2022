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
	goto_scene()


func _on_Exit_pressed():
	get_tree().quit()



func goto_scene():
	call_deferred("_deferred_goto_scene")
	
	
func _deferred_goto_scene():
	#if whether_to_save:
	#	var last_scene = get_tree().get_current_scene().get_name() #the name of the scene we are leaving
		#if !save_scene(last_scene):
		#	
	#print("Lauren left ",last_scene)

	get_tree().get_current_scene().queue_free()

	
	# Load new scene
	var packed_scene = load("res://World/World.tscn") #new wersion (I don't know, but there are small bugs)
	#ResourceLoader.load(path)
	# Instance the new scene
	var instanced_scene = packed_scene.instance()
	# Add it to the scene tree, as direct child of rootget_rooT(
	get_tree().get_root().add_child(instanced_scene)
	# Set it as the current scene, only after it has been added to the tree
	get_tree().set_current_scene(instanced_scene)
