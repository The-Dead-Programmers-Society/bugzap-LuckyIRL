extends Button

signal sprite_hover

func _process(_delta):
	if is_hovered():
		emit_signal("sprite_hover")

