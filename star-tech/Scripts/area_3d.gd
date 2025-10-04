extends Area3D

@export var dialogo: DialogueResource

# Para controlar que no se repita
var triggered: bool = false  

func _ready() -> void:
	# Conectar la señal cuando un cuerpo entra al área
	connect("body_entered", Callable(self, "_on_body_entered"))


func _on_body_entered(body: Node) -> void:
	if body.name != "Jugador":
		return
		
	DialogueManager.show_example_dialogue_balloon(dialogo)
	queue_free()
