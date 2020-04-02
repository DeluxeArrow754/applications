extends KinematicBody2D

var speed = 400


var velocity = Vector2()
var walk = true
var runaway = false
var camera_shake = false
var shake_amount = 2.0

func _physics_process(delta):
	velocity = Vector2()

	if walk == true:
		velocity.y += 1
	
	if runaway == true:
		$Hero.play("Run")
		velocity.y -= 1
		
	if camera_shake == true:
		$Camera.set_offset(Vector2( \
        	rand_range(-2.0, 2.0) * shake_amount, \
        	rand_range(-2.0, 2.0) * shake_amount \
		))
		
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)

func _on_FirstTimer_timeout():
	walk = false
	$Hero.play("Idle")

func _on_ThirdTimer_timeout():
	camera_shake = true


func _on_Fourth_timeout():
	runaway = true
	speed = 900