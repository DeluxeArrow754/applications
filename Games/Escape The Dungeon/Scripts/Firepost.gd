extends Node2D

onready var Anim = $Anim
var entered=false


func _on_Area2D_body_entered(body):
	if not entered and body is preload("res://Scripts/Hero.gd"):
		Anim.play("On")
		entered = true
