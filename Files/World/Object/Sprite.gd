extends Sprite

var x = Vector2(100,300)
func _ready():
	move(x)

func move(target):
	var move_tween = get_node("Tween")
	move_tween.interpolate_property(self, "position", Vector2(0, 0), target, 10,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	move_tween.start()
