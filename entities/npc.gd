extends CharacterBody2D

@export var speed = 200

var destination
var distance

var homeDestination
var homeDistance

var goHome = false

# Called when the node enters the scene tree for the first time.
func _ready():
	destination = get_tree().root.get_node("Shopfront/Npc Destination")
	homeDestination = get_tree().root.get_node("Shopfront/Npc HomeDestination")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = destination.global_position - global_position
	distance = to_player.length()
	var direction = to_player.normalized()
	
	var away = homeDestination.global_position - global_position
	homeDistance = away.length()
	var homeDirection = away.normalized()

	
	if distance > 5 and goHome == false:
		move_and_collide(direction * speed * delta)

	if goHome == true:
		move_and_collide(homeDirection * speed * delta)


func _go_home():
	goHome = true

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	goHome = false
