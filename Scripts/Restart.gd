extends Button

func _on_button_down() -> void:
	get_tree().reload_current_scene()
	Global.score = 0
	pass # Replace with function body.
