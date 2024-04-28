extends Sprite2D

var speed = 800
var velocity = Vector2()
var target_position = Vector2()

# Function to move and rotate the sprite randomly within the screen boundaries in continuous motion
func move_sprite():
	# Set a random target position within the screen boundaries
	if position.distance_to(target_position) < 10:  # If the sprite is close to the target position
		target_position = Vector2(randi() % int(get_viewport_rect().size.x), randi() % int(get_viewport_rect().size.y))

	# Calculate the direction to move towards the target
	var direction = (target_position - position).normalized()
	velocity = direction * speed

	# Move the sprite towards the target position smoothly
	position += velocity * get_process_delta_time()

	# Rotate the sprite
	rotation += 0.1

	# If the sprite reaches the screen boundaries, it will bounce back
	if position.x > get_viewport_rect().size.x or position.x < 0:
		velocity.x = -velocity.x
	if position.y > get_viewport_rect().size.y or position.y < 0:
		velocity.y = -velocity.y


func _process(delta):
	move_sprite()

func _on_area_2d_2_body_entered(body):
	if body is TextureButton:
		body.mouse_entered()
