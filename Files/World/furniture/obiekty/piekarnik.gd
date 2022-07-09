extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var wloczony = false
var temp = 0



enum{
	gora,
	dol,
	off,
	all
}

var state = gora
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	match state:
		gora:
			$Node2D/turnPiekarnik/dol.hide()
			$Node2D/turnPiekarnik/gora.show()
		dol:
			$Node2D/turnPiekarnik/dol.show()
			$Node2D/turnPiekarnik/gora.hide()
		off:
			$Node2D/turnPiekarnik/dol.hide()
			$Node2D/turnPiekarnik/gora.hide()
		all:
			$Node2D/turnPiekarnik/dol.show()
			$Node2D/turnPiekarnik/gora.show()



func _on_turnPiekarnik_pressed():
	if state == gora:
		state = dol
		wloczony = true
		nagrzej()
	elif state == dol:
		state = off
		wloczony = false
	elif state == off:
		state = all
		wloczony = true
		nagrzej()
	else:
		state = gora
		wloczony = true
		nagrzej()
			
		

		

func nagrzej():
	
	var object = get_node("Slot24")
	if object.get_child_count():
		$Node2D/Timer.start()
		for item_child in object.get_children():
			if item_child.item_name == "MiesoWieprzowe":
				pass
				
				#object.create("woda")


func _on_Timer_timeout():
	if temp <= 200 && wloczony:
		temp += 1
	if !wloczony && temp > 0:
		temp -= 1
	$Node2D/temp.text = str("temp: ",temp)
	
