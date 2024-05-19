extends RigidBody2D

var is_swimming: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("KEY_I") and is_swimming:
		apply_central_impulse(Vector2(0,-250))
	if Input.is_action_just_released("KEY_I") and is_swimming:
		apply_central_impulse(Vector2(-1,5))

func _on_area_2d_swimming_change_state(in_water):
	is_swimming = in_water

