extends Node2D

@onready var platform_container = $platform_container
@onready var first_platform = $platform_container/platform
@onready var platform_initial_position_y = first_platform.position.y

@export var platform_scene: Array [PackedScene] = []
@export var y_spacing: float = 100 #Distância vertical média entre plataformas (mais estética)
@export var num_platforms: int = 10 #Quantidades de plataformas

@onready var screen_size = get_viewport().get_visible_rect().size

@onready var score_label = $camera/score #score_label facilita o uso no código
var start_y := 0.0

var last_y: float
var last_x = -9999.0
var min_horizontal_distance = 60.0

func _ready():
	randomize()
	last_y = platform_initial_position_y
	level_generator(num_platforms) #Gera a quantidde inicial de plataformas
	
	start_y = $player.position.y
	$player.connect("height_changed", Callable(self, "_on_player_height_changed"))
	#Sempre que o player emitir height_changed, essa função será chamada

	# new_y vem do sinal
	# É a nova maior altura do player
func _on_player_height_changed(new_y): 
	var distance = start_y - new_y #Quanto mais sobe → maior score. Nunca diminui
	var score = int(distance) #Converte para inteiro. Score não precisa de casas decimais
	score_label.text = str(score) #Atualiza o Label na tela
	
func level_generator(amount: int):
	for i in range(amount):
		var new_type = randi() % 3
		
		# sobe a plataforma (números negativos sobem)
		last_y -= randf_range(36.0, 54.0)
		
		var x = randf_range(20.0, 160.0)
		
		var new_platform 
		
		if new_type == 0: 
			new_platform = platform_scene[0].instantiate()
		elif new_type == 1:
			new_platform = platform_scene[1].instantiate()
		elif new_type == 2:
			new_platform = platform_scene[2].instantiate()
			new_platform.delete_object.connect(self.delete_object)
			
			
		if new_type != null:
			new_platform.position = Vector2(x, last_y)
			platform_container.call_deferred("add_child", new_platform) #Use call_deferred para evitar bugs cso algum nó esteja sendo remido no mesmo frame

func delete_object(obstacle):
	obstacle.queue_free()
	level_generator(1)	
	

func _on_platform_cleaner_body_entered(body):
		body.queue_free() #A plataforma é removida
		level_generator(1) #cria uma plataforma nova mais acima
