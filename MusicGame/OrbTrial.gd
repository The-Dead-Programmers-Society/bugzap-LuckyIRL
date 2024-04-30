extends Sprite2D

@export var speed: float = 200
var velocity = Vector2()
var target_position = Vector2()

func _ready():
	# Initialize the target position randomly when the scene starts
	target_position = Vector2(randi() % int(get_viewport_rect().size.x), randi() % int(get_viewport_rect().size.y))

func _process(delta):
	# Move the sprite towards the target position
	var direction = (target_position - position).normalized()
	velocity = direction * speed
	position += velocity * delta

	# Rotate the sprite
	rotation += 0.1

	# If the sprite reaches the target position, set a new random target
	if position.distance_to(target_position) < 20:
		target_position = Vector2(randi() % int(get_viewport_rect().size.x), randi() % int(get_viewport_rect().size.y))
