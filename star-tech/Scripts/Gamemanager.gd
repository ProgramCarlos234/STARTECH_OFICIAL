extends Node

# ======================= #
#    RUTAS DE ESCENAS     #
# ======================= #
const NIVEL_INTRODUCCION = "res://Escenas/Nivel_Introduccion.tscn"
const NIVEL_CAMPO_ESTUDIO_ALASKA = "res://Escenas/Nivel_CampoEstudioAlaska.tscn"
const NIVEL_EXPLOSION_SOCIAL = "res://Escenas/Nivel_ExplosionSocial.tscn"
const NIVEL_RAYO_IMPACTANDO_CENTRAL = "res://Escenas/Nivel_RayoImpactandoCentral.tscn"
const NIVEL_FINAL = "res://Escenas/Nivel_Final.tscn"

var Escenas: Array = [
	NIVEL_INTRODUCCION,                          #0
	NIVEL_CAMPO_ESTUDIO_ALASKA,                  #1 
	NIVEL_EXPLOSION_SOCIAL,                      #2
	NIVEL_RAYO_IMPACTANDO_CENTRAL,               #3
	NIVEL_FINAL                                  #4
]

func _abrirScenas(IndiceEscena:int)->void:
		get_tree().change_scene_to_file(Escenas[IndiceEscena])
		pass
