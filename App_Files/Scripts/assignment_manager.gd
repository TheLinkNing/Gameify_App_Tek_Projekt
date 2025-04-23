extends Node

const ASSIGNMENT: PackedScene = preload("res://App_Files/Scenes/assignment.tscn")

func instantiate_new_assignment(ass_name, ass_type, ass_time, ass_diff):
	var newr_assignment = ASSIGNMENT.instantiate()
	add_child(newr_assignment)
	newr_assignment.make_new_assignment(ass_name, ass_type, ass_time, ass_diff)
	
