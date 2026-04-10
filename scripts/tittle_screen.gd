extends Control

func _on_startbtn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/doodle_jump.tscn") 


func _on_quitbtn_pressed() -> void:
	get_tree().quit()
