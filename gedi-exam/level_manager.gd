extends Node

var current_level = 1

func _ready():
	load_level(current_level)

func load_level(level_num: int):
	var level = load("res://level_1.tscn")
	if level_num == 1:
		level = load("res://level_1.tscn")
	$/root/World.add_child(level.instantiate())

func _process(delta):
	pass
