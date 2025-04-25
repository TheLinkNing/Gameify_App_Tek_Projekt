extends Node

const ASSIGNMENT: PackedScene = preload("res://appFiles/Scenes/assignment.tscn")

func instantiate_new_assignment(ass_name, ass_type, ass_time, ass_diff):
	# creates an instance of the assignment node as a child of the assignment_manager...
	# using the variables obtained from the UI (aka. assignment_input)
	var newr_assignment = ASSIGNMENT.instantiate()
	add_child(newr_assignment)
	newr_assignment.make_new_assignment(ass_name, ass_type, ass_time, ass_diff)
	# here for debugging purposses
	print(get_child_count())
	
