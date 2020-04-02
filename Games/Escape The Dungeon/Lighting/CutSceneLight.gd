extends Node2D

onready var Anim = $LightPost
var entered=false


func _on_Area_body_entered(body):
	if not entered and body is preload("res://Scripts/HeroCutscene.gd"):
		Anim.play("On")
		entered = true
