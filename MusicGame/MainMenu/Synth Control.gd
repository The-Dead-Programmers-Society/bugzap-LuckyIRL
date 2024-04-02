extends Control

# Audio generation parameters
var sample_rate = 44100
var duration = 2.0 # seconds
var amplitude = 0.5
var default_frequency = 440.0 # Initial frequency

# Function to generate audio waveform based on frequency
func generate_audio(frequency: float) -> PackedByteArray:
	var num_samples = int(duration * sample_rate)
	var audio_data = PackedByteArray()

	for i in range(num_samples):
		var sample = sin(2 * PI * frequency * i / sample_rate) * amplitude
		audio_data.append(int(sample * 127 + 127)) # Convert to 8-bit format and scale to range [0, 255]

	return audio_data

# Function to play the synthesized audio
func play_audio(audio_data: PackedByteArray) -> void:
	var audio_stream = AudioStreamSample.new()
	audio_stream.format = AudioStreamSample.Format.FORMAT_8_BITS  # Access the enum value using AudioStreamSample.Format
	audio_stream.mix_rate = sample_rate
	audio_stream.data = audio_data
	$"../UI Control/AudioStreamPlayer".stream = audio_stream
	$"../UI Control/AudioStreamPlayer".play()


# Function called when the play button is pressed
func _on_button_pressed():
	var audio_data = generate_audio(default_frequency)
	play_audio(audio_data)

# Function called when the frequency slider value is changed
func _on_frequency_value_changed(new_frequency):
	default_frequency = new_frequency
