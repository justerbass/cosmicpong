extends CharacterBody2D
class_name Jugador

const SPEED = 500


func _physics_process(delta):

	var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(0, velocity.y, SPEED)

	move_and_slide()
	
	velocity.x = move_toward(0, 0 , SPEED)

	if Input.is_action_pressed("salir"):
		get_tree().quit()
