extends Area3D

@export var IndiceMundo: int

var jugador_en_area: bool = false   # Bandera para saber si el jugador está dentro del área

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	# Detecta si el jugador está en el área y presiona "Interactuar"
	if jugador_en_area and Input.is_action_just_pressed("Interactuar"):
		print("Jugador y tecla interactuar activas")
		Gamemanager._abrirScenas(IndiceMundo)


func _on_body_entered(body: Node3D) -> void:
	if body.name == "Jugador":
		jugador_en_area = true   # Marca que el jugador entró al área


func _on_body_exited(body: Node3D) -> void:
	if body.name == "Jugador":
		jugador_en_area = false  # Marca que el jugador salió del área
