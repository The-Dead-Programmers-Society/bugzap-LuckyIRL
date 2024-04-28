extends Sprite2D

var move_speed_range = Vector2(50.0, 150.0)
var rotation_speed_range = Vector2(-1.0, 1.0)
var rotation_speed = 0.5
var direction = Vector2(1.0, 1.0)

func _ready():
	move_sprite()

func move_sprite():
	position += direction * randf_range(move_speed_range.x, move_speed_range.y) * get_process_delta_time()
	rotate(randf_range(rotation_speed_range.x, rotation_speed_range.y) * rotation_speed * get_process_delta_time())
	clamp_position()

func clamp_position():
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)

func _process(_delta):
	move_sprite()

func _on_area_2d_2_body_entered(body):
	if body is TextureButton:
		body.mouse_entered()
