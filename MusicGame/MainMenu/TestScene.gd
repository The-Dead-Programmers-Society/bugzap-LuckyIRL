extends Control

func _ready():
	# Connect to the sprite_hover signal of each button
	for button in $Control.get_children():
		button.connect("sprite_hover", self, "_on_button_hover")

func _on_button_1_hover(button):
	print("Sprite hovered over button:", button.name)
	# Perform any other actions here, such as triggering sounds
	$AudioStreamPlayer1.play()

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


func _on_button_1_sprite_hover():
	$AudioStreamPlayer1.play()
	

func _on_button_2_sprite_hover():
	$AudioStreamPlayer2.play()
	pass # Replace with function body.


func _on_button_3_sprite_hover():
	$AudioStreamPlayer3.play()
	pass # Replace with function body.


func _on_button_4_sprite_hover():
	$AudioStreamPlayer4.play()
	pass # Replace with function body.


func _on_button_5_sprite_hover():
	$AudioStreamPlayer5.play()
	pass # Replace with function body.


func _on_button_6_sprite_hover():
	$AudioStreamPlayer6.play()
	pass # Replace with function body.


func _on_button_7_sprite_hover():
	$AudioStreamPlayer7.play()
	pass # Replace with function body.


func _on_button_8_sprite_hover():
	$AudioStreamPlayer8.play()
	pass # Replace with function body.


func _on_button_9_sprite_hover():
	$AudioStreamPlayer9.play()
	pass # Replace with function body.
