extends Node2D

# Declare member variables here. Examples:
# var a = 2
var enteredScreen = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_VisibilityNotifier2D_screen_exited():
	if enteredScreen:
		hide()


func _on_VisibilityNotifier2D_screen_entered():
	enteredScreen = true
