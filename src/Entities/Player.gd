extends KinematicBody2D

export (float) var speed: float = 400.0
export (float) var gravity: float = 2000.0
export (float) var jump_speed: float = 1000.0

var velocity: Vector2 = Vector2.ZERO
var is_jumping: bool = false

func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		is_jumping = true
		velocity.y = -jump_speed
		
	if is_jumping and Input.is_action_just_released("jump"):
		is_jumping = false
		velocity.y = 0
		
	velocity.x *= speed
	
	velocity.y += gravity * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)
