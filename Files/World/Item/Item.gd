extends Node2D

var item_name

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if randi() % 2 == 0:
		item_name = "szklanka"
	else:
		item_name = "cebula"
		
		
	$TextureRect.texture = load("res://World/Item/" + item_name + ".png")


func setItem(name):
	item_name = name
	$TextureRect.texture = load("res://World/Item/" + item_name + ".png")
