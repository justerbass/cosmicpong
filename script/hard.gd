extends Node2D

var PlayerScore = 0
var OpoenteScore = 0

func _ready():
	_restart_game()

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore)
	$MarcadorOponente.text = str(OpoenteScore)

func _restart_game():
	$ball.is_moving = false
	$ball.position = Vector2(969, 540)
	$Jugador.position = Vector2(150, 540)
	$Jugador.velocity.y = 0
	$RestartTimer.start()

func _on_arco_player_body_entered(body):
	if body is Ball:
		OpoenteScore += 1
		$AudioGoal.play()
		_restart_game()

func _on_arco_oponente_body_entered(body):
	if body is Ball:
		PlayerScore += 1
		$AudioGoal.play()
		_restart_game()


func _on_restart_timer_timeout():
	pass # Replace with function body.



func _on_volver_pressed():
	get_tree().change_scene_to_file("res://scene/menu.tscn")
	pass # Replace with function body.
