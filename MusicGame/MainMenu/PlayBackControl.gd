# RecorderPlayback.gd

extends Control

# Array to store recorded audio data
var recorded_bell_sounds: Array = []

func _ready():
	# Connect the pressed signal of record and play buttons
	$RecordButton
	$PlayButton

func _on_record_button_pressed():
	# Clear any existing recorded bell sounds
	recorded_bell_sounds.clear()

	# Start recording
	# You might implement a timer here to record for a specific duration

func _on_play_button_pressed():
	# Iterate over the recorded bell sounds and play each one
	for audio_stream in recorded_bell_sounds:
		var audio_stream_player = AudioStreamPlayer.new()
		audio_stream_player.stream = audio_stream
		audio_stream_player.play()
