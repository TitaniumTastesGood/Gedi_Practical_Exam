@abstract
extends Node

var spawns
var spawned

func spawn():
	if spawned == null:
		var guy = spawns.instantiate()
		guy.position = self.position
		spawned = guy
		$/root/World.add_child.call_deferred(guy)
