extends ParallaxBackground

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	$ParallaxLayer.motion_offset.x += 1
	$ParallaxLayer1.motion_offset.x += 2
	$ParallaxLayer2.motion_offset.x += 4
	$ParallaxLayer3.motion_offset.x += 8