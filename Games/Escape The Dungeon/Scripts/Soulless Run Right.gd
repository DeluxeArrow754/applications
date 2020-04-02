extends KinematicBody2D

export (int) var speed = 400

onready var sprite = $Sprite
var velocity = Vector2()
var first_walk = true
var fainted = false
	
func _physics_process(delta):
	velocity = Vector2()

	if first_walk == true:
		velocity.x += -1
		
		
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)