extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 2000
const SPEED = 400
const JUMP_HIGH = -1500

var motion = Vector2()
var entered = false

func _ready():
	$VisibilityNotifier2D.connect("screen_exited", self, "die")
	
func _physics_process(delta):
	motion.y += GRAVITY * delta;
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED;
		$PlayerSprite.flip_h = false
		$PlayerSprite.play("moving_left")
	
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED;
		$PlayerSprite.flip_h = true
		$PlayerSprite.play("moving_left")
	
	else:
		motion.x=0
		$PlayerSprite.play("iddle")
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HIGH;
	else:
		$PlayerSprite.play("jumping")
		
	motion = move_and_slide(motion, UP);
	pass;

func die():
	get_tree().change_scene("res://Lost.tscn")