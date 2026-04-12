extends Node

var score = 0
@onready var score_label: Label = $score_label

func _ready() -> void:
	print("Ayy, I exist!")
	print("Don't mind him, we're only here for debugging purposes.")

func addPoint(): 
	score += 1
	score_label.text = "Congratulations! \n You've collected " + str(score) + " coin(s)!"

	
