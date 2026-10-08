@abstract
extends "res://creature.gd"

var player
var deals_contact_damage = true
var score_value = 100

func _ready():
	player = $/root/World/JohnBubble
	super()

func die():
	super()
	#get_node("/root/GameManager").gain_score(score_value)

func _on_hitbox_area_entered(area):
	print(area)
	if "shooter" in area:
		if area.shooter == player:
			take_damage(area.damage)
			if !area.piercing:
				area.destroy()
