extends CharacterBody2D

@export var speed = 200

var destination
var distance
var enddistance
var enddestination
var goAway = false

# Called when the node enters the scene tree for the first time.
func _ready():
	destination = get_tree().root.get_node("Intro/Marker_ufo")
	enddestination = get_tree().root.get_node("Intro/Marker_ufo2")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = destination.global_position - global_position
	distance = to_player.length()
	var direction = to_player.normalized()
	
	var away = enddestination.global_position - global_position
	enddistance = to_player.length()
	var enddirection = away.normalized()
	
	$AnimatedSprite2D.play("default")
	
	if distance > 5 and goAway == false:
		move_and_collide(direction * speed * delta)
		$Timer.start()
	
	if goAway == true:
		move_and_collide(enddirection * speed * delta)
#		if enddistance < 1:
#			queue_free()

func _on_timer_timeout():
	goAway = true
	$Timer.stop()


func _on_visible_on_screen_notifier_2d_screen_exited():
	pass
