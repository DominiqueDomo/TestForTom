extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D

const SPEED = 95.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("move_left2", "move_right2", "move_up2", "move_down2")

	velocity = direction * SPEED
	move_and_slide()
	
	if Input.is_action_pressed("move_up2") and Input.is_action_pressed("move_left2"):
		_animated_sprite.play("run_NW")
	elif Input.is_action_just_released("move_up2") and Input.is_action_just_released("move_left2"):
		_animated_sprite.play("idle_NW")
	elif Input.is_action_pressed("move_up2") and Input.is_action_pressed("move_right2"):
		_animated_sprite.play("run_NE")
	elif Input.is_action_just_released("move_up2") and Input.is_action_just_released("move_right2"):
		_animated_sprite.play("idle_NE")
	elif Input.is_action_pressed("move_down2") and Input.is_action_pressed("move_left2"):
		_animated_sprite.play("run_SW")
	elif Input.is_action_just_released("move_down") and Input.is_action_just_released("move_left2"):
		_animated_sprite.play("idle_SW")
	elif Input.is_action_pressed("move_down2") and Input.is_action_pressed("move_right2"):
		_animated_sprite.play("run_SE")
	elif Input.is_action_just_released("move_down2") and Input.is_action_just_released("move_right2"):
		_animated_sprite.play("idle_SE")
	elif Input.is_action_pressed("move_up2"):
		_animated_sprite.play("run_N")
	elif Input.is_action_just_released("move_up2"):
		_animated_sprite.play("idle_N")
	elif Input.is_action_pressed("move_left2"):
		_animated_sprite.play("run_W")
	elif Input.is_action_just_released("move_left2"):
		_animated_sprite.play("idle_W")
	elif Input.is_action_pressed("move_down2"):
		_animated_sprite.play("run_S")
	elif Input.is_action_just_released("move_down2"):
		_animated_sprite.play("idle_S")
	elif Input.is_action_pressed("move_right2"):
		_animated_sprite.play("run_E")
	elif Input.is_action_just_released("move_right2"):
		_animated_sprite.play("idle_E")
		



