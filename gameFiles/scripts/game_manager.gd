extends Node

var score = 0

@onready var score_label: Label = $Score_Label

func add_point():
	score += 1
	if score == 12:
		score_label.text = "Congrats!!!\n You collected all coins!!!"
	elif score == 1:
		score_label.text = "Congrats!!!\n You collected " + str(score) + " coin!!!"
	else:
		score_label.text = "Congrats!!!\n You collected " + str(score) + " coins!!!"
