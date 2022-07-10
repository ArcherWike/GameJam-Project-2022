extends KinematicBody2D
var ACCELERATION = 500 
var MAX_SPEED = 200
var FRICTION = 550

var velocity = Vector2.ZERO 

onready var animationTree = $AnimationTree
onready var animation = $AnimationPlayer
onready var animationState = animationTree.get("parameters/playback")

func _physics_process(delta):
	var input_vector = Vector2.ZERO 
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") 
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up") 
	input_vector = input_vector.normalized() 
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Stand/blend_position", input_vector)
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationState.travel("Idle")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta) 
	else:
		animationState.travel("Stand")
		#animation.play("stand")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity) 
