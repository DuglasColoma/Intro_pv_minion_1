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
	
#func _process(delta):
#	if !visNotif.is_on_screen():
#		die()

func die():
	hide()
	
func _physics_process(delta):
	velocity.x = SPEED * direction;
	velocity.y += GRAVITY * delta;
	
	#
	#direction = direction * -1
	
	
	if is_on_floor():
		$EnemyAnimation.play("walk");
	else:
		$EnemyAnimation.play("jump");
	#	direction = direction * -1
	#	$EnemyAnimation.flip_h = (direction != 1)
	
	
	velocity = move_and_slide(velocity, UP);
