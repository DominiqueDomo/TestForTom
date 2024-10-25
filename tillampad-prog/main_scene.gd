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
	
	random_position.x = randi_range(196, 471) #map size
	random_position.y = randi_range(51, 301)
	
	if random_position.x >= 330 and random_position.x < 425 and random_position.y >= 238 and random_position.y < 284: #bottom water square
		return enemy_random_position()
	elif random_position.x >= 346 and random_position.x < 442 and random_position.y >= 220 and random_position.y < 280: #middle water square
		return enemy_random_position()
	elif random_position.x >= 384 and random_position.x < 442 and random_position.y >= 202 and random_position.y < 239: #top water square
		return enemy_random_position()
		
	elif random_position.x >= 237 and random_position.x < 271 and random_position.y >= 64 and random_position.y < 92: #top-left elevation square, behind tree
		return enemy_random_position()
	elif random_position.x >= 233 and random_position.x < 245 and random_position.y >= 64 and random_position.y < 166: #left elevation side
		return enemy_random_position()
	elif random_position.x >= 233 and random_position.x < 272 and random_position.y >= 138 and random_position.y < 182: #left-bottom elevation side
		return enemy_random_position()
		
	elif random_position.x >= 289 and random_position.x < 328 and random_position.y >= 64 and random_position.y < 86: #top-right elevation square
		return enemy_random_position()
	elif random_position.x >= 316 and random_position.x < 328 and random_position.y >= 64 and random_position.y < 162: #right elevation side
		return enemy_random_position()
	elif random_position.x >= 289 and random_position.x < 328 and random_position.y >= 144 and random_position.y < 162: #right-bottom elevation 
		return enemy_random_position()
		
	elif random_position.x >= 382 and random_position.x < 424 and random_position.y >= 142 and random_position.y < 182: #big rock
		return enemy_random_position()
	elif random_position.x >= 296 and random_position.x < 318 and random_position.y >= 186 and random_position.y < 206: #middle tree
		return enemy_random_position()
	elif random_position.x >= 456 and random_position.x < 482 and random_position.y >= 283 and random_position.y < 316: #bottom tree
		return enemy_random_position()
		
	elif random_position.x >= 417 and random_position.x < 443 and random_position.y >= 61 and random_position.y < 82: #top mini bush
		return enemy_random_position()
	elif random_position.x >= 344 and random_position.x < 373 and random_position.y >= 93 and random_position.y < 119: #top medium bush
		return enemy_random_position()
	elif random_position.x >= 276 and random_position.x < 304 and random_position.y >= 110 and random_position.y < 134: #top medium bush
		return enemy_random_position()
	elif random_position.x >= 204 and random_position.x < 234 and random_position.y >= 190 and random_position.y < 218: #medium stone
		return enemy_random_position()
	elif random_position.x >= 236 and random_position.x < 238 and random_position.y >= 238 and random_position.y < 268: #bottom medium bush
		return enemy_random_position()
	elif random_position.x >= 292 and random_position.x < 274 and random_position.y >= 274 and random_position.y < 296: #bottom mini stone
		return enemy_random_position()
	else:
		return random_position
	
