extends Control

func _ready():
	# Connect the pressed signal of each button to a method in this script
	$Button1.connect("pressed", self, "_on_button_pressed")
	$Button2.connect("pressed", self, "_on_button_pressed")
	# Connect more buttons similarly

func _on_button_pressed() -> void:
	# Get the pressed button's number from its name
	var button_number_str: String = $Button1.name.get_suffix()
	var button_number: int = button_number_str.to_int()

	# Find the corresponding AudioStreamPlayer by name
	var audio_stream_player: AudioStreamPlayer = get_node("AudioStreamPlayer" + str(button_number))

	# Check if the AudioStreamPlayer exists
	if audio_stream_player != null:
		# Play the bell sound
		audio_stream_player.play()
