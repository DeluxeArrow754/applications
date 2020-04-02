extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Animated.play("FirstBoot")


func _on_AudioStreamPlayer2D_finished():
	$Audio.play()
	pass # Replace with function body.

func _on_Timer_timeout():
	get_tree().reload_current_scene()
	pass # Replace with function body.
