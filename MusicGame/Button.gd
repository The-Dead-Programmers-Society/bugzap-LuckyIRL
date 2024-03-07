extends Button

@export var stream: AudioStream

func _on_pressed():
	AudioManager.play_sound(stream)


func _on_button_2_pressed():
	$Sprite2D.duplicate()
	pass # Replace with function body.
