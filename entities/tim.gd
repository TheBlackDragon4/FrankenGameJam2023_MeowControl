extends CharacterBody2D

@export var speed = 200

var destination
var distance
var direction
var move = false

# Called when the node enters the scene tree for the first time.
func _ready():
	destination = get_tree().root.get_node("Intro/Marker_tim")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = destination.global_position - global_position
	distance = to_player.length()
	direction = to_player.normalized()
	
	if move == true:
		move_and_collide(direction * speed * delta)


func _on_timer_timeout():
	move = true
