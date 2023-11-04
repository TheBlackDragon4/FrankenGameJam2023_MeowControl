extends CharacterBody2D

@export var speed = 200

var destination
var distance

# Called when the node enters the scene tree for the first time.
func _ready():
	destination = get_tree().root.get_node("Shopfront/Npc Destination")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = destination.global_position - global_position
	distance = to_player.length()
	var direction = to_player.normalized()
	
	if distance > 5:
		move_and_collide(direction * speed * delta)
