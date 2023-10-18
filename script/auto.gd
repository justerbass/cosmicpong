extends CharacterBody2D
class_name Auto

const SPEED = 800.0
@onready var pelota = get_parent().find_child("pelota")

func _physics_process(delta):
	
	velocity.y = _get_oponent_direction() * SPEED
	velocity.x = 0
	
	move_and_collide(velocity * delta)
	
	if Input.is_action_pressed("salir"):
		get_tree().quit()
	
	
func _get_oponent_direction():
	
	if abs(pelota.position.y - position.y) > 60:
		if pelota.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0

