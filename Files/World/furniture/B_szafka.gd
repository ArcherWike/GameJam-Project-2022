extends Area2D

var Isplayer = false

export(String) var mebel

signal obiekt (mebel)


func _input(event):
	if event.is_action_pressed("interaction") and Isplayer == true:
		emit_signal("obiekt", mebel)
	


func _on_B_szafka_body_entered(body):
	if body.name == "Player":
		Isplayer = true


func _on_B_szafka_body_exited(body):
	if body.name == "Player":
		Isplayer = false
