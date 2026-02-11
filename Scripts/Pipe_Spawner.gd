class_name Pipe_Spawner extends Node2D

var pipes = preload("res://Scenes/Pipes.tscn")
var timer : float
@export var time : float
@export var height_offset : float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	timer = 0
	spawnPipes()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer >= time :
		timer = 0
		spawnPipes()
	timer += delta
	pass

func spawnPipes() -> void:
	var lowest_point = height_offset
	var highest_point = -height_offset
	var spawn_height = randf_range(highest_point, lowest_point)
	var pipe = pipes.instantiate()
	pipe.position.y = spawn_height
	add_child(pipe)
