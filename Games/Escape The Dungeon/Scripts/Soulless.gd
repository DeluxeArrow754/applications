extends KinematicBody2D

onready var Anim = $Anim
var fainted = false
var speed = 400
var velocity = Vector2()


func _physics_process(delta):
	velocity = Vector2()

	if fainted == false:
		velocity.y += rand_range(-1, 100)
		velocity.x += rand_range(-1, 100)
		
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)


func _on_HitBox_body_entered(body):
	if not fainted and body is preload("res://Scripts/SwordKinematic.gd"):
		Anim.play("Fainted")
		fainted = true