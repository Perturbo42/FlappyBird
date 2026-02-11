class_name Pipe_Move extends Node2D

@export var moveSpeed : float
@export var deadZone : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= moveSpeed * delta
	if position.x <= deadZone:
		queue_free()
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body is Bird) and (body.is_alive):
		Global.score += 1
	pass # Replace with function body.
