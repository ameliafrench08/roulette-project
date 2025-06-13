extends Sprite2D

var showing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bug_area = %bug_area 
	if bug_area.return_clicked() == true:
		self.show()
		showing = true
	else:
		self.hide()
		
func return_showing():
	return showing
