extends Sprite2D

# Variables and functions to make the sprite move randomly between the 15 buttons in the 2D scene that are children 
# of the root control node and activate the buttons once when it is on top of it with a speed variable that can be set in the editor.

# The speed of the sprite
var speed: float = 100

# The current target button
var target_path: NodePath

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# If the sprite is not moving
	if not target_path:
		# Get a random button
		var button_index = randi() % 15
		target_path = get_node("../../../ButtonContainer/Button" + str(button_index)).get_path()
	
	# Move towards the button
	if target_path:
		var target_node = get_node_or_null(target_path)
		if target_node:
			var target_position = target_node.global_position
			var direction = (target_position - global_position).normalized()
			global_position += direction * speed * delta
	
	# If the sprite is on top of the button
	if target_path and global_position.distance_to(target_position) < 10:
		# Activate the button
		var button = target_node
		if button:
			button.emit_signal("pressed")
			# Reset the target
			target_path = null
