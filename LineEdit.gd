extends LineEdit

func _process(delta):
	var roulette_table = %roulette_table
	if text.length() == 2 || text.length() == 1:
		if text == str(roulette_table.return_angle()):
			var equal = true
			print("TRUE")
		else:
			var equal = false
			print("FALSE")
		
