extends Sprite2D

var buttons = [
	"button_1",
	"button_2",
	"button_3",
	"button_4",
	"button_5",
	"button_6",
	"button_7",
	"button_8",
	"button_9"
]

var move_speed_range = Vector2(50.0, 150.0)
var rotation_speed_range = Vector2(-1.0, 1.0)
var rotation_speed = 0.5
var direction = Vector2(1.0, 1.0)
var button_hover_interval = 0.5
var button_hover_timer = 0.0

func _ready():
	move_sprite()
	for button_name in buttons:
		connect_button_hover(button_name)

func move_sprite():
	position += direction * randf_range(move_speed_range.x, move_speed_range.y) * get_process_delta_time()
	rotate(randf_range(rotation_speed_range.x, rotation_speed_range.y) * rotation_speed * get_process_delta_time())
	clamp_position()
	update_direction()

func update_direction():
	if randi() % 100 < 5:
		direction = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0)).normalized()

func clamp_position():
	var viewport_rect = get_viewport_rect()
	position.x = clamp(position.x, 0, viewport_rect.size.x)
	position.y = clamp(position.y, 0, viewport_rect.size.y)

func _process(_delta):
	move_sprite()
	button_hover_timer += _delta
	if button_hover_timer >= button_hover_interval:
		hover_buttons()
		button_hover_timer = 0.0

func hover_buttons():
	var button_index = randi() % buttons.size()
	var button_name = buttons[button_index]
	var button = $"../UI Control/{button_name}"
	if button:
		button.emit_signal("sprite_hover")

func connect_button_hover(button_name):
	var button = $"../UI Control/{button_name}"
	if button:
		button.connect("sprite_hover", self, "_on_button_hover")
	
func _on_button_hover():
	print("Sprite hovering over a button")
	# Play sound or trigger other actions here
