extends Node


signal customer_done
signal start_dialog

var has_hat = false
var hat_inventory = [null,null,null] #int array for the hats in the players inventory, one int value defines the ID of the hat
var hat_catalog = [] #array with indexes for every possible hat in the game
var karma = 3 #currency for creating hats etc. inital value 3 
var research_catalog = [] #array with all research informations
var research_tries = 2 #amount of research scenes a player is allowed to watch per day
var customer_per_day = 3 #amount of customers per day

func _process(delta):
	if Input.is_action_pressed("Escape"):
		get_tree().quit()
