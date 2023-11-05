extends Node2D

var npc = preload("res://entities/npc.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	GameState.connect("customer_done", _start_timer)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	var n = npc.instantiate()
	n.position = Vector2(-716, 6)
	$NpcContainer.add_child(n)
	
	
func _on_area_2d_body_entered(body):
	DialogueManager.show_example_dialogue_balloon(load("res://dialog/template.dialogue"), "welcome_customer")
	
func _start_timer():
	$Timer.start()
