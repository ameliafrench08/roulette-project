extends LineEdit
var equal = false

func _process(delta):
	var roulette_table = %roulette_table
	var checkButton = %CheckButton
	if checkButton.return_check() == false:

		if text.length() == 2 || text.length() == 1:
			if text == str(roulette_table.return_angle()) || abs(roulette_table.return_angle() - int(text)) <= 5:
				equal = true
				#print("TRUE")
			else:
				equal = false
				#print("FALSE")

func returnEqual():
	return equal
		
