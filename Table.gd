extends Sprite2D
var speed = 400
var angular_speed = 20
var moving = true

func _init():

	print("Hello, world!")


#func _input_event(_canvas_local_event, event):
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		#if get_rect().has_point(to_local(event.position)):
			#print("Sprite clicked!")
			#angular_speed = 20
			#
			#return # Stop the event from being processed by other nodes
func _process(delta):
	
	if round(angular_speed) != 0:
		rotation += angular_speed * delta
		angular_speed -= 0.01
	if angular_speed == 0:
		# Find the angle of the sprite so that you can calculate what number pops up
		return
		
 



	
