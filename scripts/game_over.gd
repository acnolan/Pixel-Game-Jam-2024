extends CanvasLayer

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")


func _on_home_pressed():
	get_tree().change_scene_to_file("res://scenes/menu/start_screen.tscn")
