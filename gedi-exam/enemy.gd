@abstract
extends "res://creature.gd"

var player
var deals_contact_damage = true
var score_value = 100
var capturing_bubble

func _ready():
	player = $/root/World/JohnBubble
	super()

func die():
	super()
	#get_node("/root/GameManager").gain_score(score_value)

func trapped(bubble):
	capturing_bubble = bubble
	bubble.captured_enemy = self

func _on_hitbox_area_entered(area):
	if "shooter" in area:
		if area.shooter == player:
			trapped(area)

func _physics_process(_delta):
	if capturing_bubble == null:
		super(_delta)
	else:
		position = capturing_bubble.position
