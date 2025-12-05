extends Camera2D

@export var player: Node2D

var highest_y = 0.0

func _ready():
	highest_y = global_position.y #Começa na posição atual
	
func _process(delta):
	if player == null:
		return
		
	#A câmera sempre mantém o X original (fixo)
	global_position.x = global_position.x
	
	#A câmera só sobe (Y diminui para cima no Godot)
	if player.global_position.y < highest_y:
		highest_y = player.global_position.y
		global_position.y = highest_y
	
