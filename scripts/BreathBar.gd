extends Control

@onready var air = $TextureProgressBar
var can_regen = false
var time_to_wait = 1
var s_timer = 0
var can_start_timer = true

func _ready():
	air.value = air.max_value
	
func _process(delta):
	if can_regen == false && air.value != 100 or air.value == 0:
		can_start_timer = true
		if can_start_timer:
			s_timer += delta
			if s_timer >= time_to_wait:
				can_regen = true
				can_start_timer = false
				s_timer = 0
	
	if air.value == 100:
		can_regen = false
		
	if can_regen == true:
		air.value += 0.5
		can_start_timer = false
		s_timer = 0
		
func updateAir(newValue):
	air.value = newValue
