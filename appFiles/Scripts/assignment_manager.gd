extends Node

const ASSIGNMENT: PackedScene = preload("res://appFiles/Scenes/assignment.tscn")

var num_of_completed_ass: int = 0
var is_assignment_running: bool = false

func instantiate_new_assignment(ass_name: String, ass_type: int, ass_time: int, ass_diff: int):
	# creates an instance of the assignment node as a child of the assignment_manager...
	# using the variables obtained from the UI (aka. assignment_input)
	var newr_assignment = ASSIGNMENT.instantiate()
	add_child(newr_assignment)
	newr_assignment.make_new_assignment(ass_name, ass_type, ass_time, ass_diff)
	# here for debugging purposses
	print(get_child_count())
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("go_back"):
		get_tree().change_scene_to_file("res://appFiles/Scenes/main_menu.tscn")
	
