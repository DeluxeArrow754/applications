extends Node2D

var Mouse_Position

func _process(delta):
	Mouse_Position = get_local_mouse_position()
	rotation += Mouse_Position.angle()
	
	if Input.is_action_pressed('Attack'):
		$Anim.play("Strike")
	
	pass