extends Node2D

var button_type = null

func _on_play_pressed() -> void:
	button_type = "start"
	$FadeTransition.show()
	$FadeTransition/FadeTimer.start(3)
	$FadeTransition/AnimationPlayer.play("fade_in")
	$ButtonManager/VBoxContainer/AnimationPlayer.play("fade_in")
	$Title/AnimationPlayer.play("fade_in")

func _on_settings_pressed() -> void:
	pass # Replace with function body.

func _on_credits_pressed() -> void:
	pass # Replace with function body.

func _on_quit_game_pressed() -> void:
	pass # Replace with function body.

func _on_fade_timer_timeout() -> void:
	match button_type:
		"start":
			get_tree().change_scene_to_file("res://scenes/Game.tscn")
		
		
