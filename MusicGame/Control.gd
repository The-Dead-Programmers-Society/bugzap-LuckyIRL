extends Control

func _ready():
	var midi_controller_scene = load("res://MainMenu/midi_Controller.tscn")
	if midi_controller_scene == null:print("Failed to load MIDI controller scene")




	# Instance the loaded scene
	var midi_controller_instance = midi_controller_scene.instance()

	# Add the instanced scene as a child of this node
	add_child(midi_controller_instance)

	# Access the slider nodes
	var _frequency_slider = midi_controller_instance.get_node("MarginContainer/HBoxContainer/FrequencySlider")
	var _pitch_slider = midi_controller_instance.get_node("MarginContainer/HBoxContainer/PitchSlider")
	var _tempo_slider = midi_controller_instance.get_node("MarginContainer/HBoxContainer/TempoSlider")

	# Now you can use these slider nodes to connect signals or manipulate their properties
