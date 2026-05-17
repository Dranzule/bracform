extends Node

var score = 0
@onready var score_label: Label = $score_label

func addPoint(): 
	score += 1
	score_label.text = "Congratulations! \n You've collected " + str(score) + " coin(s)!"

func _ready():
	$"../UI/FadeTransition/AnimationPlayer".play("fade_out")
	
