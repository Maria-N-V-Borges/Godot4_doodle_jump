extends CharacterBody2D

#Quão rápido o player desliza pelo ar.
var speed = 100
#força do pulo invertido (quanto maior, mais “quica”).
var jump_force = 400
#aceleração vertical — afeta a queda com realismo.
const GRAVITY = 500

#@onready: Executa a linha depois que o node estiver pronto no cenário, perfeito pra acessar nodes internos com get_node() sem erro.
#Pega o tamanho da tela do jogo visível no momento. Muito útil pra limitar o movimento do player horizontalmente!
@onready var anim = $anim as AnimatedSprite2D
@onready var screen_size = get_viewport().get_visible_rect().size


func _physics_process(delta):
#Ele retorna -1, 0 ou 1 com base nas teclas pressionadas!
	var direction = Input.get_axis("ui_left", "ui_right")
	
#Suaviza o movimento lateral com lerpf — isso cria uma transição natural e fluida (sem travar).
#Quando não está apertando nada, o personagem desacelera aos poucos.
#O anim.scale.x = -direction vira o sprite para o lado certo (espelhamento)
	if direction  != 0:
		velocity.x = lerpf(velocity.x, direction * speed, 1.5)
		anim.scale.x =-direction
	else:
		velocity.x = lerpf(velocity.x, 0, 1.5)
	
	#Aplicar gravidade
	#Física realista com delta! Isso evita que o jogo dependa do FPS
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	
		#método direto que retorna colisão
	var collision = move_and_collide(velocity * delta)

#Animações automáticas baseadas no movimento vertical:
#fall: caindo (quando a velocidade vertical é positiva).
#idle: flutuando ou parado no ar.
	if velocity.y > 0:
		anim.play("fall")
	else:
		anim.play("idle")
	
	# Bounce (pulo ao tocar plataforma)
	#Ao colidir (Com a plataforma), você inverte a força, simulando aquele efeito de quicar nas plataformas
	if collision:
		velocity.y = -jump_force
	
	#Teletransporte lateral
	#Se sair pela esquerda, aparece na direita. Se sair pela direita, aparece na esquerda.
	position.x = wrapf(position.x, 0, screen_size.x)
	
