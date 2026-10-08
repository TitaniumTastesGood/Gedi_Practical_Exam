extends "res://spawner.gd"

func _ready():
	spawns = load("res://walker_enemy.tscn")
	spawn()
