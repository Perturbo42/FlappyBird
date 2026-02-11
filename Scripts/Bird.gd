class_name Bird extends CharacterBody2D
signal died
@export var gravity_force : float
@export var jump_force : float

var is_alive : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	is_alive = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity.y += gravity_force * delta
	if Input.is_action_just_pressed("Jump"):
		if is_alive:
			velocity.y = -jump_force
	move_and_slide()


func _on_area_2d_area_entered(_area: Area2D) -> void:
	is_alive = false
	died.emit()
	pass # Replace with function body.
