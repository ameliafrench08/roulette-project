extends TextEdit
var equal = false
@onready
var roulette_table = %roulette_table
func _process(delta):
	if text.length() == 2 || text.length() == 1:
		print(text)
		if text == str(roulette_table.return_angle()) || abs(int(text) - roulette_table.return_angle()) <= 5:
			equal = true
		else:
			equal = false


func return_equal():
	return equal
