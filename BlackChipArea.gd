extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_logo_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		print("Logo clicked")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
