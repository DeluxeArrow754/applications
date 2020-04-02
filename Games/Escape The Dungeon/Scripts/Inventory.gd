extends Node2D

var Opened = false


func _physics_process(delta):
	
	if Input.is_action_just_released('Inventory') and Opened == false:
		$Anim.play("Open")
		$NoClose/Bag.play("Open")
		Opened = true
	elif Input.is_action_just_released('Inventory') and Opened == true:
		$Anim.play("Close")
		$NoClose/Bag.play("Closed")
		Opened = false

func _on_Area2D_mouse_entered():
	$EmotionAnim.play("Show")


func _on_Area2D_mouse_exited():
	$EmotionAnim.play("Hide")
