extends Node2D

func _ready():
	var player = load("res://john_bubble.tscn").instantiate()
	player.position = Vector2(500, 500)
	add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
