extends "res://scripts/platform.gd"

func response():
	$spring.play("default")

func _on_spring_animation_finished():
	$spring.frame = 0
	$spring.stop()
