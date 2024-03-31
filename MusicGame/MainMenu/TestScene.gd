extends Control

# Array to store recorded audio data
var recorded_bell_sounds: Array = []

func _on_button_1_pressed():
	$AudioStreamPlayer1.play()
func _on_button_2_pressed():
	$AudioStreamPlayer2.play()	
func _on_button_3_pressed():
	$AudioStreamPlayer3.play()
func _on_button_4_pressed():
	$AudioStreamPlayer4.play()
func _on_button_5_pressed():
	$AudioStreamPlayer5.play()
func _on_button_6_pressed():
	$AudioStreamPlayer6.play()
func _on_button_7_pressed():
	$AudioStreamPlayer7.play()
func _on_button_8_pressed():
	$AudioStreamPlayer8.play()
func _on_button_9_pressed():
	$AudioStreamPlayer9.play()
