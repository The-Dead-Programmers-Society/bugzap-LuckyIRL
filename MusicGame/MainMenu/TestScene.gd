extends Control
class_name UI

# Array to store recorded audio data
var recorded_bell_sounds: Array = []

@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")
@onready var BEAT1_BUS_ID = AudioServer.get_bus_index("Beat1")
@onready var BEAT2_BUS_ID = AudioServer.get_bus_index("Beat2")
@onready var BEAT3_BUS_ID = AudioServer.get_bus_index("Beat3")
@onready var BEAT4_BUS_ID = AudioServer.get_bus_index("Beat4")
@onready var menu = $Control


func  _input(event):
	if event.is_action_pressed("ui_cancel"):
		menu.visible = !menu.visible


# Function to update the speed parameter of all sprites based on the slider value
func update_speed(new_speed: float):
	for sprite in $Sprites.get_children():
		if sprite is Sprite2D:
			sprite.update_speed(new_speed)

func _on_button_1_mouse_entered():
	$AudioStreamPlayer1.play()


func _on_button_2_mouse_entered():
	$AudioStreamPlayer2.play()


func _on_button_3_mouse_entered():
	$AudioStreamPlayer3.play()


func _on_button_4_mouse_entered():
	$AudioStreamPlayer4.play()


func _on_button_5_mouse_entered():
	$AudioStreamPlayer5.play()


func _on_button_6_mouse_entered():
	$AudioStreamPlayer6.play()


func _on_button_7_mouse_entered():
	$AudioStreamPlayer7.play()


func _on_button_8_mouse_entered():
	$AudioStreamPlayer8.play()


func _on_button_9_mouse_entered():
	$AudioStreamPlayer9.play()


func _on_button_10_mouse_entered():
	$AudioStreamPlayer10.play()


func _on_button_11_mouse_entered():
	$AudioStreamPlayer11.play()


func _on_button_12_mouse_entered():
	$AudioStreamPlayer12.play()


func _on_button_13_mouse_entered():
	$AudioStreamPlayer13.play()


func _on_button_14_mouse_entered():
	$AudioStreamPlayer14.play()

func _on_button_15_mouse_entered():
	$AudioStreamPlayer15.play()

func _on_button_17_mouse_entered():
	$AudioStreamPlayer17.play()


func _on_button_16_mouse_entered():
	$AudioStreamPlayer16.play()


func _on_button_18_mouse_entered():
	$AudioStreamPlayer18.play()


func _on_button_19_mouse_entered():
	$AudioStreamPlayer19.play()


func _on_button_20_mouse_entered():
	$AudioStreamPlayer20.play()


func _on_button_21_mouse_entered():
	$AudioStreamPlayer21.play()


func _on_button_22_mouse_entered():
	$AudioStreamPlayer22.play()


func _on_button_23_mouse_entered():
	$AudioStreamPlayer23.play()


func _on_button_24_mouse_entered():
	$AudioStreamPlayer24.play()


func _on_button_25_mouse_entered():
	$AudioStreamPlayer25.play()


func _on_button_26_mouse_entered():
	$AudioStreamPlayer26.play()


func _on_button_27_mouse_entered():
	$AudioStreamPlayer27.play()


func _on_button_28_mouse_entered():
	$AudioStreamPlayer28.play()


func _on_button_29_mouse_entered():
	$AudioStreamPlayer29.play()


func _on_button_30_mouse_entered():
	$AudioStreamPlayer30.play()


func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(MUSIC_BUS_ID, value < .05)


func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(SFX_BUS_ID, value < .05)


func _on_beat_1_slider_value_changed(value):
	AudioServer.set_bus_volume_db(BEAT1_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(BEAT1_BUS_ID, value < .05)


func _on_beat_2_slider_value_changed(value):
	AudioServer.set_bus_volume_db(BEAT2_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(BEAT2_BUS_ID, value < .05)


func _on_beat_3_slider_value_changed(value):
	AudioServer.set_bus_volume_db(BEAT3_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(BEAT3_BUS_ID, value < .05)


func _on_beat_4_slider_value_changed(value):
	AudioServer.set_bus_volume_db(BEAT4_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(BEAT4_BUS_ID, value < .05)


func _on_beat_track_pressed():
	$MarginContainer2/GridContainer/BEAT1.play()


func _on_beat_track_2_pressed():
	$MarginContainer2/GridContainer/BEAT2.play()


func _on_beat_track_3_pressed():
	$MarginContainer2/GridContainer/BEAT3.play()










func _on_area_2d_1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer1.play()


func _on_area_2d_2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer2.play()


func _on_area_2d_3_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer3.play()


func _on_area_2d_4_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer4.play()


func _on_area_2d_5_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer5.play()


func _on_area_2d_6_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer6.play()


func _on_area_2d_7_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer7.play()


func _on_area_2d_8_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer8.play()


func _on_area_2d_9_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer9.play()


func _on_area_2d_10_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer10.play()


func _on_area_2d_11_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer11.play()


func _on_area_2d_12_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer12.play()


func _on_area_2d_13_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer13.play()


func _on_area_2d_14_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer14.play()


func _on_area_2d_15_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer15.play()


func _on_area_2d_16_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer16.play()


func _on_area_2d_17_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer17.play()

func _on_area_2d_18_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer18.play()


func _on_area_2d_19_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer19.play()


func _on_area_2d_20_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer20.play()


func _on_area_2d_21_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer21.play()


func _on_area_2d_22_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer22.play()

func _on_area_2d_23_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer23.play()


func _on_area_2d_24_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer24.play()


func _on_area_2d_25_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer25.play()


func _on_area_2d_26_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer26.play()


func _on_area_2d_27_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer27.play()


func _on_area_2d_28_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer28.play()


func _on_area_2d_29_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer29.play()


func _on_area_2d_30_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	$AudioStreamPlayer30.play()

	
