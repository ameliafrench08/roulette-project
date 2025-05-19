extends Sprite2D
var speed = 400
var angular_speed = 0
var moving = false
var angle = 0



func _init():
	print("Hello, world!")


func _process(delta):
	var check_button = %CheckButton
	if moving == false:
		if check_button.return_check() == true:
			angular_speed = 10
			moving = true
			
	if moving == true:
		if round(angular_speed) != 0:
			rotation += angular_speed * delta
			angular_speed -= 0.003
		var angle_in_degrees = round(rad_to_deg(get_angle_to(Vector2(600, 0))))
		
		if angle_in_degrees < 0:
			angle_in_degrees+= 360
		
		if round(angular_speed) == 0:
			
			if angle_in_degrees >= 0 && angle_in_degrees <= 9.729:
				angle = 34
			
			if angle_in_degrees >= 9.729 && angle_in_degrees <= 19.458:
				angle = 6
			
			if angle_in_degrees >= 19.458 && angle_in_degrees <= 29.187:
				angle = 27
			
			if angle_in_degrees >= 29.187 && angle_in_degrees <= 38.916:
				angle = 13
			
			if angle_in_degrees >= 38.916 && angle_in_degrees <= 48.645:
				angle = 36
				
			if angle_in_degrees >= 48.645 && angle_in_degrees <= 58.374:
				angle = 11
				
			if angle_in_degrees >= 58.374 && angle_in_degrees <= 68.103:
				angle = 30
			
			if angle_in_degrees >= 68.103 && angle_in_degrees <= 77.832:
				angle = 8
			if angle_in_degrees >= 77.832 && angle_in_degrees <= 87.561:
				angle = 23
				
			if angle_in_degrees >= 87.561 && angle_in_degrees <= 97.29:
				angle = 10
			
			if angle_in_degrees >= 97.29 && angle_in_degrees <= 107.019:
				angle = 5
				
			if angle_in_degrees >= 107.019 && angle_in_degrees <= 116.748:
				angle = 24
				
			if angle_in_degrees >= 116.748 && angle_in_degrees <= 126.477:
				angle = 33
			if angle_in_degrees >= 126.477 && angle_in_degrees <= 136.206:
				angle = 1
				
			if angle_in_degrees >= 136.206 && angle_in_degrees <= 145.935:
				angle = 20
				
			if angle_in_degrees >= 145.935 && angle_in_degrees <= 155.664:
				angle = 14
				
			if angle_in_degrees >= 155.664 && angle_in_degrees <= 165.393:
				angle = 31
				
			if angle_in_degrees >= 165.393 && angle_in_degrees <= 175.122:
				angle = 16
				
			if angle_in_degrees >= 175.122 && angle_in_degrees <= 184.851:
				angle = 9
			
			if angle_in_degrees >= 184.851 && angle_in_degrees <= 194.58:
				angle = 22
				
			if angle_in_degrees >= 194.58 && angle_in_degrees <= 204.309:
				angle = 18
			
			if angle_in_degrees >= 204.309 && angle_in_degrees <= 214.038:
				angle = 29
				
			if angle_in_degrees >= 214.038 && angle_in_degrees <= 223.767:
				angle = 7
			
			if angle_in_degrees >= 223.767 && angle_in_degrees <= 233.496:
				angle = 28
			
			if angle_in_degrees >= 233.496 && angle_in_degrees <= 243.255:
				angle = 12
			
			if (angle_in_degrees) >= 243.255 && (angle_in_degrees) <= 252.954:
				angle = 35
				
			if (angle_in_degrees) >= 252.954 && (angle_in_degrees) <= 262.683:
				angle = 3
				
			if (angle_in_degrees) >= 262.683 && (angle_in_degrees) <= 272.412:
				angle = 26
			
			if (angle_in_degrees) >= 272.412 && (angle_in_degrees) <= 282.141:
				angle = 0
			
			if (angle_in_degrees) >= 282.141 && (angle_in_degrees) <= 291.87:
				angle = 32
			
			if (angle_in_degrees) >= 291.87 && (angle_in_degrees) <= 301.599:
				angle = 15
			
			if (angle_in_degrees) >= 301.599 && (angle_in_degrees) <= 311.328:
				angle = 19
			
			if (angle_in_degrees) >= 311.328 && (angle_in_degrees) <= 321.057:
				angle = 4
			
			if (angle_in_degrees) >= 321.057 && (angle_in_degrees) <= 330.786:
				angle = 21
				
			if angle_in_degrees >= 330.786 && (angle_in_degrees) <= 340.515:
				angle = 2
			
			if angle_in_degrees >= 340.515 && angle_in_degrees <= 350.244:
				angle = 25
			
			if angle_in_degrees >= 350.244:
				angle = 17
		
		#print(angle_in_degrees)
		#print("ANGLE: ")
		#print(angle)
		#print("---------------------")


func return_angle():
	return angle
