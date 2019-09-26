extends Node

export(NodePath) var player_path

#onready var screen_size = Vector2(Globals.get("display/width"), Globals.get("display/height"))
onready var player = get_node(player_path)

const HORIZONTAL_OFFSET = 200

var new_position = Vector2()
var player_pos = Vector2()


func _ready():
	update_camera()

func _fixed_process(delta):
	update_camera()

func update_camera():
	if player:
		var canvas_transform = get_viewport().get_canvas_transform()
		player_pos = player.get
		new_position = player_pos
		new_position.x -= HORIZONTAL_OFFSET 
		new_position.y = canvas_transform[2].y
		canvas_transform[2] = new_position
		get_viewport().set_canvas_transform(canvas_transform)