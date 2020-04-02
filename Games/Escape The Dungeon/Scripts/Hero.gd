extends KinematicBody2D

export (int) var speed = 900

onready var sprite = $Sprite
var velocity = Vector2()
var on_floor = true
var fainted = false
	
func _physics_process(delta):
	velocity = Vector2()

	if Input.is_action_pressed('Right'):
		velocity.x += 1
		sprite.scale.x = 1
		
	if Input.is_action_pressed('Left'):
		velocity.x -= 1
		sprite.scale.x = -1

	if Input.is_action_pressed('Down'):
		velocity.y += 1
		
	if Input.is_action_pressed('Up'):
		velocity.y -= 1

		
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)


	if on_floor:
		if velocity.x == 0 and velocity.y == 0:
			sprite.play("Idle")

		if velocity.x or velocity.y > 1:
			sprite.play("Running")
			
		if velocity.x or velocity.y < -1:
			sprite.play("Running")
