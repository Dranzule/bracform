extends CharacterBody2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var sprite: AnimatedSprite2D = $sprite

# player is in the air
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# space is pressed
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# the player has moved
	var direction := Input.get_axis("move_left", "move_right") 
	
	if direction > 0: 
		sprite.flip_h = false
	elif direction < 0: 
		sprite.flip_h = true

	# player seems to have jumped
	if is_on_floor():
		if direction == 0:
			sprite.play("idle")
		else:
			sprite.play("run")
	else:
		sprite.play("jump")

	if direction == 0:
		sprite.play("idle")
	else:
		sprite.play("run")

	# applies direction
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
