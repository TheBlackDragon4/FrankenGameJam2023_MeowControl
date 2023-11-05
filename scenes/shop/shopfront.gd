extends Node2D

var npc = preload("res://entities/npc.tscn")
var hat_path = "res://assets/hats/hat_"


var customer_counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	GameState.connect("customer_done", _start_timer)
	GameState.connect("show_hat_1", _show_hat_1)
	GameState.connect("show_hat_2", _show_hat_2)
	GameState.connect("show_hat_3", _show_hat_3)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	var n = npc.instantiate()
	n.position = Vector2(-716, 6)
	$NpcContainer.add_child(n)
	customer_counter += 1
	
func _start_timer():
	if customer_counter == 2:
		_next_scene()
	else:
		$NpcSpawner.start()

func _next_scene():
#	placehodler für scene change
	get_tree().quit()
	
func _on_area_2d_body_entered(body):
	DialogueManager.show_example_dialogue_balloon(load("res://dialog/shop.dialogue"), "welcome_customer")

func _show_hat_1():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[0])+".png")
	$Hat.show()
	
func _show_hat_2():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[1])+".png")
	$Hat.show()
	
func _show_hat_3():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[2])+".png")
	$Hat.show()
