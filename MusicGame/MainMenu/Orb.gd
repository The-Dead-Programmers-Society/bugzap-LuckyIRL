extends Sprite2D

var move_speed_range = Vector2(50.0, 150.0)
var rotation_speed_range = Vector2(-1.0, 1.0)
var rotation_speed = 0.5
var direction = Vector2(1.0, 1.0)
var button_hover_interval = 0.5
var button_hover_timer = 0.0

func _ready():
	move_sprite()

func move_sprite():
	position += direction * randf_range(move_speed_range.x, move_speed_range.y) * get_process_delta_time()
	rotate(randf_range(rotation_speed_range.x, rotation_speed_range.y) * rotation_speed * get_process_delta_time())
	clamp_position()
	update_direction()

func update_direction():
	if randi() % 100 < 5:
		direction = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0)).normalized()

func clamp_position():
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)

func _process(_delta):
	move_sprite()
	button_hover_timer += _delta
	if button_hover_timer >= button_hover_interval:
		hover_buttons()
		button_hover_timer = 0.0

func hover_buttons():
	# Logic to trigger button hover signal
	pass
