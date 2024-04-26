extends Control

func _ready():
	var MIDI_controller_scene = load("res://MainMenu/MIDI_Controller.tscn")
	if MIDI_controller_scene == null:
		print("Failed to load MIDI controller scene")
	else:
		# Instance the loaded scene
		var MIDI_controller_instance = MIDI_controller_scene.Instance()

		# Add the instanced scene as a child of this node
		add_child(MIDI_controller_instance)

		# Access the slider nodes
		var _frequency_slider = MIDI_controller_instance.get_node("MarginContainer/HBoxContainer/FrequencySlider")
		var _pitch_slider = MIDI_controller_instance.get_node("MarginContainer/HBoxContainer/PitchSlider")
		var _tempo_slider = MIDI_controller_instance.get_node("MarginContainer/HBoxContainer/TempoSlider")

		# Now you can use these slider nodes to connect signals or manipulate their properties
