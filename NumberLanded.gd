extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var rouletteTable = %roulette_table
	if rouletteTable.return_spun() == true:
		text = "WINNING NUMBER: " + str(rouletteTable.return_angle())
