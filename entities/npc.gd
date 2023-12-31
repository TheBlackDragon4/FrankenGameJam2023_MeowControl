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
	GameState.connect("customer_done", _go_home)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var to_player = destination.global_position - global_position
	distance = to_player.length()
	var direction = to_player.normalized()
	
	var away = homeDestination.global_position - global_position
	homeDistance = away.length()
	var homeDirection = away.normalized()

	
	if distance > 5 and goHome == false:
		$AnimatedSprite2D.play("default")
		move_and_collide(direction * speed * delta)
	elif goHome == false:
		$AnimatedSprite2D.stop()

	if goHome == true:
		$AnimatedSprite2D.play("default")
		move_and_collide(homeDirection * speed * delta)
		if homeDistance < 5:
			queue_free()


func _go_home():
	goHome = true
	$AnimatedSprite2D.play("default")

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	goHome = false
