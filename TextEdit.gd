extends TextEdit
@onready
var roulette_table = %roulette_table
func _process(delta):
	if text.length() == 2:
		if text == str(roulette_table.return_angle()):
			var equal = true
			print("TRUE")
		else:
			var equal = false
			print("FALSE")
		
