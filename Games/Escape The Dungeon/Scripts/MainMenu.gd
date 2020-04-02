extends Node2D

func _ready():
	$Animated.play("ToScreen")

func _on_TextureButton_pressed():
	$Animated.play("ToNewGame")


func _on_ToNewGame_timeout():
	get_tree().change_scene("res://Scenes/NewGameText.tscn")


func _on_AudioStreamPlayer_finished():
	$Music.play()

func _on_Settings_pressed():
	$Animated.play("ToSettings")
	OS.window_fullscreen = !OS.window_fullscreen