extends Label
var money = 50
var moneyChanged = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var label = %Label
	var textEdit = %LineEdit
	var equal = textEdit.returnEqual()
	var check = %CheckButton
	var roulette_table = %roulette_table
	
	if check.return_check() == true:
		moneyChanged = false
	if roulette_table.return_spun() == true:
		if moneyChanged == false:
			moneyChanged = true
			if equal == true:
				money += 2 * (label.returnBet())
			else:
				money -= label.returnBet()
			
	text = "Money: " + str(money)
