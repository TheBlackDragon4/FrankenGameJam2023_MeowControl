extends Node2D

var npc = preload("res://entities/npc.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Escape"):
		get_tree().quit()

func _on_timer_timeout():
	var n = npc.instantiate()
	n.position = Vector2(-716, 6)
	add_child(n)
	$Timer.stop()
