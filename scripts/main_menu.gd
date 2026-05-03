extends Node2D

func _ready() -> void:
	pass

func process() -> void:
	pass

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_settings_pressed() -> void:
	pass # Replace with function body.

func _on_credits_pressed() -> void:
	pass # Replace with function body.

func _on_quit_game_pressed() -> void:
	pass # Replace with function body.
