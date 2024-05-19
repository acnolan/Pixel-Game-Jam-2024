extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("KEY_M"):
		apply_central_impulse(Vector2(0,-250))
	if Input.is_action_just_released("KEY_M"):
		apply_central_impulse(Vector2(-1,5))