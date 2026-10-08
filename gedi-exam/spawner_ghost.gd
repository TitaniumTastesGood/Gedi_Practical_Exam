extends "res://spawner.gd"

func _ready():
	spawns = load("res://ghost_enemy.tscn")
	spawn()
