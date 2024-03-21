extends Button

var audio_path = "res://Audio/Bell1.mp3" # Relative path to the audio file
var audio_stream_player: AudioStreamPlayer

func _ready():
	audio_stream_player = get_node("/root/AudioStreamPlayer") # Assuming "/root/AudioStreamPlayer" is the path to the AudioStreamPlayer node
	# Connect the button's "pressed" signal to the "_on_button_pressed" method
	connect("pressed", self, "0")

func _on_button_pressed():
	# Load the audio clip
	var audio = load(audio_path)
	if audio:
		# Set the audio clip to the AudioStreamPlayer
		audio_stream_player.stream = audio
		# Play the audio
		audio_stream_player.play()
