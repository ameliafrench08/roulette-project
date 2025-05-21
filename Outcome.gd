extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var textEdit = %TextEdit
	var roulette_table = %roulette_table
	if roulette_table.return_spun() == true:
		if textEdit.return_equal() == true:
			text = "YOU WIN"
		else:
			text = "Sorry..."
