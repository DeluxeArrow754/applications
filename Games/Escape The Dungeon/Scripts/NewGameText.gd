extends Node2D

func _physics_process(omega):
	if Input.is_action_pressed('Space'):
		$Animated.play("QuickSkip")
# Called when the node enters the scene tree for the first time.
func _ready():
	$Animated.play("OpenScreen")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/NewGameCutscene.tscn")


func _on_SkipTimer_timeout():
	get_tree().change_scene("res://Scenes/Main.tscn")
