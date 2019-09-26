extends StaticBody2D

onready var Player = get_parent().get_node("Player")

func _ready():
	pass # Replace with function body.

func _process(delta):
	$borderLeft.position.y = Player.position.y
	$borderRight.position.y = Player.position.y
