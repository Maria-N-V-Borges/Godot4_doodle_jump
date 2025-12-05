extends Node2D

@onready var platform_container = $platform_container
@onready var first_platform = $platform_container/platform
@onready var platform_initial_position_y = first_platform.position.y

@export var platform_scene: PackedScene
@export var y_spacing: float = 100
@export var num_platforms: int = 10 #Quantidades de plataformas

@onready var screen_size = get_viewport().get_visible_rect().size

var last_y: float
var last_x = -9999.0
var min_horizontal_distance = 60.0

func _ready():
	randomize()
	last_y = platform_initial_position_y
	level_generator(num_platforms)
	
	
func level_generator(amount: int):
	for i in range(amount):
		# sobe a plataforma (números negativos sobem)
		last_y -= randf_range(36.0, 54.0)
		
		var x = randf_range(20.0, 160.0)
		
		var new_platform = platform_scene.instantiate()
		new_platform.position = Vector2(x, last_y)
		
		platform_container.call_deferred("add_child", new_platform)
		

func _on_platform_cleaner_body_entered(body):
		body.queue_free()
		level_generator(1) #cria uma plataforma nova mais acima
