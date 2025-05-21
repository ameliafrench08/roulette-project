extends TextEdit
var equal = false
@onready
var roulette_table = %roulette_table
func _process(delta):
	if text.length() == 2:
		if text == str(roulette_table.return_angle()) || abs(int(text) - roulette_table.return_angle()) <= 3:
			equal = true
			print("TRUE")
		else:
			equal = false
			print("FALSE")

func return_equal():
	return equal
