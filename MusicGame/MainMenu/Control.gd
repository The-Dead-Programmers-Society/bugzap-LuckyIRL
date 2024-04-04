extends Control

var playback
var sample_hz
var pulse_hz = 440.0 # The frequency of the sound wave.

func _ready():
	$AudioStreamPlayer.play()
	playback = $AudioStreamPlayer.get_stream_playback()
	sample_hz = $AudioStreamPlayer.stream.mix_rate
	fill_buffer()

func fill_buffer():
	var phase = 0.0
	var increment = pulse_hz / sample_hz
	var frames_available = playback.get_frames_available()

	for i in range(frames_available):
		playback.push_frame(Vector2.ONE * sin(phase * TAU))
		phase = fmod(phase + increment, 1.0)
