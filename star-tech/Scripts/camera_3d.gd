extends Camera3D

@onready var character_body_3d: CharacterBody3D = $"../CharacterBody3D"

func _process(delta: float) -> void:
	# Tomamos la posición actual de la cámara
	var cam_pos = global_position
	
	# Solo actualizamos el eje X para que siga al jugador
	cam_pos.x = character_body_3d.global_position.x
	
	# Actualizamos la posición global de la cámara
	global_position = cam_pos
