extends KinematicBody2D

const UP = Vector2(0,-1);
const GRAVITY = -200;
const SPEED = 200;
const JUMP_HIGH = -1500;

var velocity = Vector2();
var direction = 1
#var visNotif = get_parent().get_node("Player/VisibilityNotifier2D")

func _ready():
	pass;

func die():
	hide()
	
func _physics_process(delta):
	velocity.y += GRAVITY * delta;
	
	#
	#direction = direction * -1
	
	
	$flyAnimation.play("default");
	
	
	velocity = move_and_slide(velocity, UP);


func _on_VisibilityEnabler2D_screen_exited():
	die()
