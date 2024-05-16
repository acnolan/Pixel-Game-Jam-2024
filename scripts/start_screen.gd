extends CanvasLayer

func _ready():
	FadeDie.stopAnimation()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")


func _on_help_pressed():
	get_tree().change_scene_to_file("res://scenes/menu/how_to_play.tscn")


func _on_quit_pressed():
	get_tree().quit()
