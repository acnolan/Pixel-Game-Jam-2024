extends Area2D

signal swimming_change_state(in_water : bool)

var is_swimming: bool = false

func _on_body_entered(body):
	var overlapping_bodies = get_overlapping_bodies()

	if (overlapping_bodies.size() >= 1):
		is_swimming = true
		emit_signal("swimming_change_state", is_swimming)

func _on_body_exited(body):
	var overlapping_bodies = get_overlapping_bodies()

	if (overlapping_bodies.size() == 0):
		is_swimming = false
		emit_signal("swimming_change_state", is_swimming)
