extends Node2D

func _ready():
	_restart_game()


func _restart_game():
	$pelota.is_moving = false
	$pelota.position = Vector2(969, 540)
	$RestartTimer.start()

func _on_arco_player_body_entered(body):
	if body is pelota:
		_restart_game()

func _on_arco_oponente_body_entered(body):
	if body is pelota:
		_restart_game()


func _on_restart_timer_timeout():
	pass # Replace with function body.


func _on_normal_pressed():
	get_tree().change_scene_to_file("res://scene/level.tscn")
	pass # Replace with function body.


func _on_hard_pressed():
	get_tree().change_scene_to_file("res://scene/hard.tscn")
	pass # Replace with function body.
