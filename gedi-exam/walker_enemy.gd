extends "res://enemy.gd"

const SPEED = 120

func _ready():
	max_hp = 1
	auto_turnaround = true
	super()

func _physics_process(_delta):
	super(_delta)
	if facing_direction == Vector2.RIGHT:
		horizontal_speed = SPEED
	elif facing_direction == Vector2.LEFT:
		horizontal_speed = 0-SPEED
