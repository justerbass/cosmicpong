extends CharacterBody2D
class_name Player

var speed = 600

func _physics_process(delta):
	
	var directions = Input.get_axis("ui_up", "ui_down")
	if directions:
		velocity.y = directions * speed
	else:
		velocity.y = move_toward(0, 0, speed)
	
	velocity.x = move_toward(0, 0 , speed)

	move_and_slide()
	
	if Input.is_action_pressed("salir"):
		get_tree().quit()
	
