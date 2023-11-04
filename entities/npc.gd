extends CharacterBody2D

@export var speed = 200

var player
var distance

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_tree().root.get_node("Shopfront/Cat")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = player.global_position - global_position
	distance = to_player.length()
	var direction = to_player.normalized()
	
	
	move_and_collide(direction * speed * delta)
