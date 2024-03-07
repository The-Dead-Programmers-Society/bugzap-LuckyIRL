class_name AudioStreamSample

extends Button

var recording = false
var recorded_audio = PackedByteArray()
var chime_player = null
var recorded_audio_player = null
var recording_player = null

@onready var record_button = $"."
@onready var play_button = $"../PlayButton"

func _ready():
	record_button.button_down.connect(start_recording)
	play_button.button_down.connect(play_recorded_audio)
	chime_player = get_node("/root/Node2D/ChimePlayer")
	recording_player = get_node("/root/Node2D/RecordingPlayer")

func start_recording():
	# Start recording audio using the RecordingPlayer
	recording = true
	recording_player.connect("finished", self, "_on_recording_player_finished")




func _on_recording_finished():
	# Stop recording when the RecordingPlayer finishes
	recording = false
	# Extract recorded audio data from the RecordingPlayer
	recorded_audio = recording_player.get_recording()

func play_recorded_audio():
	if recorded_audio.size() > 0:
		# Create an audio stream from the recorded audio data
		var audio_stream = AudioStreamSample.new()
		audio_stream.data = recorded_audio
		# Create a new AudioStreamPlayer node if not already present
		if not $RecordedAudioPlayer:
			recorded_audio_player = AudioStreamPlayer.new()
			add_child(recorded_audio_player)
		# Play the recorded audio using the RecordedAudioPlayer
		recorded_audio_player.stream = audio_stream
		recorded_audio_player.play()

func _on_button_down():
	pass # Implement this method if needed


func _on_recording_player_finished():
	pass # Replace with function body.


func _on_chime_player_finished():
	pass # Replace with function body.


func _on_recorded_audio_player_finished():
	pass # Replace with function body.
