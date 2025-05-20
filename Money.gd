extends LineEdit
var money = 10
var betPlaced = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var checkButton = %CheckButton
	var lineEdit = %LineEdit
	
	if checkButton.return_check() == false && betPlaced == false:
		placeBet()

		if money < 10:
			betPlaced = true



func placeBet():
	var lineEdit = %LineEdit
	if text.contains("*"):
		var integer = int(text.substr(0, text.length()))
		if integer <= money:
			if lineEdit.returnEqual() == true:
				money += (2 * integer)
			else:
				money -= integer
		else:
			print("TOO LITTLE MONEY")
