extends Label

var bet = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func changeBet(number):
	bet += number
func returnBet():
	return bet
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (round(bet) == bet):
		text = "Bet: " + str(bet)
