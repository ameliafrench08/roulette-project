extends Sprite2D
var speed = 400
var angular_speed = 3
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
		angular_speed -= 0.00001
	var angle_in_degrees = round(rad_to_deg(get_angle_to(Vector2(600, 0))))
	
	if angle_in_degrees < 0:
		angle_in_degrees+= 360
	
	if round(angular_speed) == 0:
		if round(angular_speed) >= 268 && round(angular_speed) <= 272:
			print("ITS A 0")
	print(angle_in_degrees)
		
 
