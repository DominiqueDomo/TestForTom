extends Node2D

@onready var timer = $Timer

var enemy = preload("res://enemy.tscn")

func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	var random_position = enemy_random_position()
		
	var enemy_instance = enemy.instantiate()
	add_child(enemy_instance)
	enemy_instance.position = random_position
		
func enemy_random_position():
	var random_position := Vector2(0, 0)
	
	random_position.x = randi_range(189, 477) #map size
	random_position.y = randi_range(45, 307)
	
	
	
	if random_position.x >= 336 and random_position.x < 419 and random_position.y >= 247 and random_position.y < 290: #bottom water square
		return enemy_random_position()
	elif random_position.x >= 354 and random_position.x < 436 and random_position.y >= 233 and random_position.y < 274: #middle water square
		return enemy_random_position()
	elif random_position.x >= 390 and random_position.x < 436 and random_position.y >= 214 and random_position.y < 233: #top water square
		return enemy_random_position()
		
	elif random_position.x >= 237 and random_position.x < 271 and random_position.y >= 71 and random_position.y < 92: #top-left elevation square, behind tree
		return enemy_random_position()
	elif random_position.x >= 233 and random_position.x < 245 and random_position.y >= 71 and random_position.y < 166: #left elevation side
		return enemy_random_position()
	elif random_position.x >= 233 and random_position.x < 272 and random_position.y >= 146 and random_position.y < 166: #left-bottom elevation side
		return enemy_random_position()
		
	elif random_position.x >= 289 and random_position.x < 328 and random_position.y >= 71 and random_position.y < 86: #top-right elevation square
		return enemy_random_position()
	elif random_position.x >= 316 and random_position.x < 328 and random_position.y >= 71 and random_position.y < 162: #right elevation side
		return enemy_random_position()
	elif random_position.x >= 289 and random_position.x < 328 and random_position.y >= 144 and random_position.y < 162: #right-bottom elevation 
		return enemy_random_position()
		
	elif random_position.x >= 391 and random_position.x < 417 and random_position.y >= 148 and random_position.y < 175: #big rock
		return enemy_random_position()
	else:
		return random_position
		
		
