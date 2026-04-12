extends Node2D

const SPEED = 60
var direction = 1

@onready var raycast_right: RayCast2D = $raycast_right
@onready var raycast_left: RayCast2D = $raycast_left
@onready var sprite: AnimatedSprite2D = $sprite

func _process(delta): 
	
	# the enemy has found a wall
	if raycast_right.is_colliding(): 
		direction = -1
		sprite.flip_h = true # sprite direction
	elif raycast_left.is_colliding():
		direction = 1
		sprite.flip_h = false
	
	# check direction, then add speed
	position.x += direction * SPEED * delta
