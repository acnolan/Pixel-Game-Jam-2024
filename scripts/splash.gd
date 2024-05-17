extends GPUParticles2D

@onready var timeCreated = Time.get_ticks_msec()

var splash1 = preload("res://sounds/water/splash1.mp3")
var splash2 = preload("res://sounds/water/splash2.mp3")
var splash3 = preload("res://sounds/water/splash3.mp3")
var splash4 = preload("res://sounds/water/splash4.mp3")
var splash5 = preload("res://sounds/water/splash5.mp3")
var splash6 = preload("res://sounds/water/splash6.mp3")

func _ready():
	var sounds = [splash1, splash2, splash3, splash4, splash5, splash6]
	$AudioStreamPlayer2D.stream = sounds.pick_random()
	$AudioStreamPlayer2D.play()

func _process(delta):
	if Time.get_ticks_msec() - timeCreated > 1000:
		queue_free()
