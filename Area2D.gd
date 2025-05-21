extends Area2D
@onready
var label = %Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	var clicked = false
	# Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		var coord_pair = event.position
		var x_coord = coord_pair.x
		var y_coord = coord_pair.y
		if x_coord >= 834 && x_coord <= 909 && y_coord >= 545 && y_coord <= 621:
			clicked = true
			label.changeBet(0.5)
			print(label.returnBet())

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
