extends Sprite


#func _process(delta):
#	pass


func _on_piekarnik_pieczenie(wloczony):
	if wloczony:
		self.show()
	else:
		self.hide()
