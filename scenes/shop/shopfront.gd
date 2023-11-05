extends Node2D

var npc = preload("res://entities/npc.tscn")
var npcDog = preload("res://entities/npcDog.tscn")
var hat_path = "res://assets/hats/hat_"

var n
var my_random_number
var customer_counter = 0
var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	GameState.connect("customer_done", _start_timer)
	GameState.connect("show_hat_1", _show_hat_1)
	GameState.connect("show_hat_2", _show_hat_2)
	GameState.connect("show_hat_3", _show_hat_3)
	GameState.connect("hide_hat", _hide_hat)
	GameState.research_tries = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	my_random_number = rng.randi_range(0, 3)

func _on_timer_timeout():
	if my_random_number != 3:
		n = npc.instantiate()
	else:
		n = npcDog.instantiate()
	
	n.position = Vector2(-716, 6)
	$NpcContainer.add_child(n)
	customer_counter += 1
	
func _start_timer():
	if customer_counter == GameState.customer_per_day:
		_next_scene()
	else:
		$NpcSpawner.start()

func _next_scene():
	get_tree().change_scene_to_file("res://scenes/optimization/hat_production.tscn")
	
func _on_area_2d_body_entered(body):
	DialogueManager.show_example_dialogue_balloon(load("res://dialog/shop.dialogue"), "welcome_customer")

func _show_hat_1():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[0]/10)+str(GameState.hat_inventory[0]%10)+".png")
	$Hat.show()
	
func _show_hat_2():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[1]/10)+str(GameState.hat_inventory[1]%10)+".png")
	$Hat.show()
	
func _show_hat_3():
	$Hat.texture = load(hat_path+str(GameState.hat_inventory[2]/10)+str(GameState.hat_inventory[2]%10)+".png")
	$Hat.show()

func _hide_hat():
	$Hat.visible = false


func _on_next_button_pressed():
	get_tree().change_scene_to_file("res://scenes/optimization/hat_production.tscn")
