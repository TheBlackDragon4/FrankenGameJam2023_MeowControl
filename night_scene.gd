extends Node

#initial variables for moon offset vector
var moon_vec_x = 50.0
var moon_vec_y = -60.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_button_pressed():
	#skip night button ends night scene instantly
	get_tree().quit()


func _on_tree_entered():
	#executed on entering the scene
	#set timer intervall and start the timer
	$Timer.wait_time = 0.1
	$Timer.start()
	
	


func _on_timer_timeout():
	#Timer moves the moon on the sky 
	
	#saves the current offset of the moon in var currentposition
	var currentposition: Vector2 =  $moon.offset
	
	#changes the offset vector every intervall so the moons orbit is ecliptic
	moon_vec_y +=1.5
	moon_vec_x += 0.5
	
	#checks if the moon has not reached its endpoint and if so moves the moon by the vector defined by (moon_vec_x and moon_vec_y)
	if(currentposition.x <= 5500):
		$moon.offset = $moon.offset + Vector2 (moon_vec_x,moon_vec_y)
	

	
	
	
	


