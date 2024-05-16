extends CanvasLayer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://start_screen.tscn")
