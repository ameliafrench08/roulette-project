extends Area2D
@onready
var label = %Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	var clicked = false
	if event is InputEventMouseMotion:
		var mousePosition = event.position
		var x = mousePosition.x
		var y = mousePosition.y
		if (x >= 915 && x <= 1011 && y >= 544 && y <= 635) || (x >= 796 && x <= 879 && y >= 546 && y <= 631) || (x >= 1033 && x <= 1129 && y >= 543 && y <= 638):
			Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
		else:
			Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		
	# Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		var coord_pair = event.position
		var x_coord = coord_pair.x
		var y_coord = coord_pair.y
		if x_coord >= 796 && x_coord <= 879 && y_coord >= 546 && y_coord <= 631:
			clicked = true
			label.changeBet(0.5)
			print(label.returnBet())

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
