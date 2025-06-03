extends Sprite2D
var speed = 400
var angular_speed = 0
var moving = false
var angle = 0
var spun = false
var change = 0.003
var startingAngle = 0
var changed_speed = false
var startingSpeed = 0



func _init():
	print("Hello, world!")
	
	startingSpeed = randf_range(3, 15)
	


func _process(delta):
	var check_button = %CheckButton
	
	if check_button.return_check() == true:
		
		
		moving = true
		if changed_speed == false:
			angular_speed = startingSpeed
			changed_speed = true
		if round(angular_speed) != 0:
			rotation += angular_speed * delta
			angular_speed -= change
			
			#if round(angular_speed) == 1:
				#change = 0.001
			
		var angle_in_degrees = rad_to_deg(get_angle_to(Vector2(600, 0)))
		
		
		if angle_in_degrees < 0:
			angle_in_degrees += 360
		print(angle_in_degrees)
		
		if round(angular_speed) == 0:
			moving = false
			print("----------------------------")
			print(angle_in_degrees)
			print("----------------------------")
			if angle_in_degrees >= 355.135135135 && angle_in_degrees <= 4.86486485797:
				angle = 34
			
			if angle_in_degrees >= 4.86486485797 && angle_in_degrees <= 14.5945945877:
				angle = 6
			
			if angle_in_degrees >= 14.5945945877 && angle_in_degrees <= 24.3243243174:
				angle = 27
			
			if angle_in_degrees >= 24.3243243174 && angle_in_degrees <= 34.0540540471:
				angle = 13
			
			if angle_in_degrees >= 34.0540540471 && angle_in_degrees <= 43.7837837768:
				angle = 36
				
			if angle_in_degrees >= 43.7837837768 && angle_in_degrees <= 53.5135135065:
				angle = 11
				
			if angle_in_degrees >= 53.5135135065 && angle_in_degrees <= 63.2432432362:
				angle = 30
			
			if angle_in_degrees >= 63.2432432362 && angle_in_degrees <= 72.9729729659:
				angle = 8
			
			if angle_in_degrees >= 72.9729729659 && angle_in_degrees <= 82.7027026956:
				angle = 23
				
			if angle_in_degrees >= 82.7027026956 && angle_in_degrees <= 92.4324324253:
				angle = 10
			
			if angle_in_degrees >= 92.4324324253 && angle_in_degrees <= 102.162162155:
				angle = 5
				
			if angle_in_degrees >= 102.162162155 && angle_in_degrees <= 111.891891885:
				angle = 24
				
			if angle_in_degrees >= 111.891891885 && angle_in_degrees <= 121.621621615:
				angle = 33
			
			if angle_in_degrees >= 121.621621615 && angle_in_degrees <= 131.351351345:
				angle = 1
				
			if angle_in_degrees >= 131.351351345 && angle_in_degrees <= 141.081081075:
				angle = 20
				
			if angle_in_degrees >= 141.081081075 && angle_in_degrees <= 150.810810805:
				angle = 14
				
			if angle_in_degrees >= 150.810810805 && angle_in_degrees <= 160.540540535:
				angle = 31
				
			if angle_in_degrees >= 160.540540535 && angle_in_degrees <= 170.270270265:
				angle = 16
				
			if angle_in_degrees >= 170.270270265 && angle_in_degrees <= 179.999999995:
				angle = 9
			
			if angle_in_degrees >= 179.999999995 && angle_in_degrees <= 189.729729725:
				angle = 22
				
			if angle_in_degrees >= 189.729729725 && angle_in_degrees <= 199.459459455:
				angle = 18
			
			if angle_in_degrees >= 199.459459455 && angle_in_degrees <= 209.189189185:
				angle = 29
				
			if angle_in_degrees >= 209.189189185 && angle_in_degrees <= 218.918918915:
				angle = 7
			
			if angle_in_degrees >= 218.918918915 && angle_in_degrees <= 228.648648645:
				angle = 28
			
			if angle_in_degrees >= 228.648648645 && angle_in_degrees <= 238.378378375:
				angle = 12
			
			if (angle_in_degrees) >= 238.378378375 && (angle_in_degrees) <= 248.108108105:
				angle = 35
				
			if (angle_in_degrees) >= 248.108108105 && (angle_in_degrees) <= 257.837837835:
				angle = 3
				
			if (angle_in_degrees) >= 257.837837835 && (angle_in_degrees) <= 267.567567565:
				angle = 26
			
			if (angle_in_degrees) >= 267.567567565 && (angle_in_degrees) <= 277.297297295:
				angle = 0
			
			if (angle_in_degrees) >= 277.297297295 && (angle_in_degrees) <= 287.027027025:
				angle = 32
			
			if (angle_in_degrees) >= 287.027027025 && (angle_in_degrees) <= 296.756756755:
				angle = 15
			
			if (angle_in_degrees) >= 296.756756755 && (angle_in_degrees) <= 306.486486485:
				angle = 19
			
			if (angle_in_degrees) >= 306.486486485 && (angle_in_degrees) <= 316.216216215:
				angle = 4
			
			if (angle_in_degrees) >= 316.216216215 && (angle_in_degrees) <= 325.945945945:
				angle = 21
				
			if angle_in_degrees >= 325.945945945 && (angle_in_degrees) <= 335.675675675:
				angle = 2
			
			if angle_in_degrees >= 335.675675675 && angle_in_degrees <= 345.405405405:
				angle = 25
			
			if angle_in_degrees >= 345.405405405:
				angle = 17
			spun = true
			moving = false
			startingSpeed = randf_range(3, 15)
			change = 0.003 
		
		
		#print(angle_in_degrees)
		#print("ANGLE: ")
		#print(angle)
		#print("---------------------")
		
	
	if check_button.return_check() == false:
		reset()
func reset():
	speed = 400
	angular_speed = 0
	angle = 0
	spun = false
	change = 0.003
	moving = false
	changed_speed = false

func return_angle():
	return angle

func return_spun():
	return spun
	
func return_moving():
	return moving
