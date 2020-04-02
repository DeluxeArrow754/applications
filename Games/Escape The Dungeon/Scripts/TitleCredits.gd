extends Node2D


func _physics_process(omega):
	if Input.is_action_pressed('Space'):
		$Animated.play("QuickEnd")
		
func _ready():
	$Animated.play("FirstBoot")

func _on_FifthTimer_timeout():
	$Animated.play("ToMainMenu")

func _on_FinalTimer_timeout():
	get_tree().change_scene("res://Scenes/TitleScreen.tscn")


func _on_SkipTimer_timeout():
	get_tree().change_scene("res://Scenes/TitleScreen.tscn")
