extends Area2D

func _ready():
	connect("body_entered", self, "on_body_entered")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_body_entered(body):
	get_tree().change_scene("res://Lost.tscn")
