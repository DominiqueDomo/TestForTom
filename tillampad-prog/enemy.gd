extends Area2D

@onready var particles = $GPUParticles2D

func _ready() -> void:
	particles.emitting = false

func _on_area_entered(area):
	particles.emitting = true
	if area.is_in_group('player'):
		EDCount.e_d_count += 1
	await get_tree().create_timer(0.2).timeout
	queue_free()
