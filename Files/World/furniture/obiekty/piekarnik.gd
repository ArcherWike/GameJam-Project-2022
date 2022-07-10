extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal pieczenie (wloczony)

var wloczony = false
var temp = 0
var pieczenie = 0

var item = null

func _physics_process(_delta):
	if item == null:
		if object.get_child_count():
			for item_child in object.get_children():
				if item_child.item_name == "golabkinieupieczone":
					item = "golabkinieupieczone"
					print(item)
		else:
			item = null


enum{
	on,
	off
}

var state = off
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	match state:
		on:
			$Node2D/Sprite.texture = load("res://World/furniture/obiekty/PiekarnikZapalony.png")
			
		off:
			$Node2D/Sprite.texture = load("res://World/furniture/obiekty/piekarnik1.png")




func _on_turnPiekarnik_pressed():
	if state == off:
		state = on
		wloczony = true
		nagrzej()
		emit_signal("pieczenie", true)
		
	elif state == on:
		state = off
		wloczony = false
		emit_signal("pieczenie", false)

			
		
onready var object = get_node("Slot24")	

func nagrzej():
	$Node2D/Timer.start()
				#object.create("woda")


func _on_Timer_timeout():
	if temp <= 200 && wloczony:
		temp += 2
	if !wloczony && temp > 0:
		temp -= 1
	$Node2D/temp.text = str("temp: ",temp)
	if temp >= 200 && wloczony && item == "golabkinieupieczone":
		object.create("golabkiupieczone")
		$Node2D/Timer.stop()
		
	
	



