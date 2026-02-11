extends Node2D
@export var bird : Bird

func _ready() -> void:
	bird.died.connect(_on_death)
	

func _on_death() -> void:
	self.visible = true
