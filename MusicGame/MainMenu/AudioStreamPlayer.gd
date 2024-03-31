extends AudioStreamPlayer

func _ready():
	generate_audio()

func generate_audio():
	var sample_rate = 44100
	var duration = 2.0 # seconds
	var frequency = 440.0 # Hz
	var amplitude = 0.5

	# Calculate the number of samples in the audio frame
	var num_samples = int(duration * sample_rate)
	var audio_data = []

	# Generate audio samples for the frame
	for i in range(num_samples):
		var sample = sin(2 * PI * frequency * i / sample_rate) * amplitude
		audio_data.append(sample)

	# Create an AudioStreamSample from the generated audio data
	var audio_stream = AudioStreamSample.new()
	audio_stream.mix_rate = sample_rate

	# Convert the audio data to a PackedByteArray with 16-bit format
	var byte_array = PackedByteArray()
	for sample in audio_data:
		byte_array.append16(int(sample * 32767)) # Convert to 16-bit format

	# Set the audio data
	audio_stream.data = byte_array

	# Set the generated audio stream to play
	stream = audio_stream

	# Play the synthesized audio
	play()
