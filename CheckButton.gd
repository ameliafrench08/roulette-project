extends CheckButton
var madeStopped = false
var button_on = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area2D_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)

func _on_Area2D_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var roulette_table = %roulette_table
	if roulette_table.return_spun() == true:
		button_on = false
		set_pressed(false)
		button_pressed = false


func return_check():
	if button_pressed:
		return true
	else:
		return false
