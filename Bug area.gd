extends Area2D

var clicked = false
# Called when the node enters the scene tree for the first time.
func _ready():
	clicked = false

func _input(event):
	if event is InputEventMouseMotion:
		var mousePosition = event.position
		var x = mousePosition.x
		var y = mousePosition.y
		if (x>=99 && x<=136 && y>=492 && y<=533)|| (x>=1059 && x<=1095 && y>=490 && y<=528)||(x >= 944 && x <= 982 && y>=490 && y <=528) || (x >= 814 && x <= 856 && y >= 491 && y <= 530)|| (x >= 915 && x <= 1011 && y >= 544 && y <= 635) || (x >= 796 && x <= 879 && y >= 546 && y <= 631) || (x >= 1033 && x <= 1129 && y >= 543 && y <= 638):
			Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
		else:
			Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		
	# Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		var coord_pair = event.position
		var x_coord = coord_pair.x
		var y_coord = coord_pair.y
		print(event.position)
		if x_coord >= 99 && x_coord <= 136 && y_coord >= 492 && y_coord <= 533:
			clicked = true

func return_clicked():
	return clicked
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
