extends Node2D

func _physics_process(omega):
	if Input.is_action_pressed('Space'):
		$Animated.play("QuickEnd")
	
func _ready():
	$Animated.play("FirstBoot")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SecondTimer_timeout():
	$Animated.play("TakeAmulet")


func _on_LastTimer_timeout():
	get_tree().change_scene("res://Scenes/Main.tscn")


func _on_SkipTimer_timeout():
	get_tree().change_scene("res://Scenes/Main.tscn")



func _on_Area2D_area_entered(area):
		$LightPost.play("On")
