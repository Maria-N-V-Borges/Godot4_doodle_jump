extends Node2D

@export var speed := 100
@export var bounce_force := -450

var direction := 1

@onready var anim = $anim
@onready var head_area = $headArea
@onready var body_area = $bodyArea
@onready var screen_size = get_viewport_rect().size

func _ready():
	anim.play("moving")
	head_area.body_entered.connect(_on_head_entered)
	body_area.body_entered.connect(_on_body_entered)

func _process(delta):
	position.x += speed * direction * delta
	
	if position.x > screen_size.x or position.x < 0:
		direction *= -1
		anim.flip_h = !anim.flip_h
		
# Player pisa na cabeça
func _on_head_entered(body):
	if not body.is_in_group("player"):
		return
	
	# força o pulo do player
	body.velocity.y = bounce_force
	queue_free()
	
#Player encosta no corpo
func _on_body_entered(body):
	if not body.is_in_group("player"):
		return
		
	body.game_over()
	

