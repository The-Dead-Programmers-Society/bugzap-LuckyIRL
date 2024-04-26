extends Control
class_name UI

# Array to store recorded audio data
var recorded_bell_sounds: Array = []

@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")
@onready var menu = $Control


func  _input(event):
	if event.is_action_pressed("ui_cancel"):
		menu.visible = !menu.visible

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


func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(MUSIC_BUS_ID, value < .05)


func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(SFX_BUS_ID, value < .05)
