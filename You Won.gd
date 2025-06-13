extends Sprite2D
var showing = false

# Called when the node enters the scene tree for the first time.
func _process(delta):
	var bug_area = %bug_area 
	if bug_area.return_clicked() == true:
		await get_tree().create_timer(2.0).timeout
		self.show()
		showing = true
	else:
		self.hide()
func return_showing():
	return showing
