extends Node
class_name	new_assignment

# type of assignment, defined through a preditermined list of possible assignments
@export var ass_type: String
# time in minutes
@export var ass_time: int
# difficulty on a scale of easy to difficult
@export var ass_diff: int

func new_assignment(new_name, new_ass_type, new_ass_time, new_ass_diff):
	
	name = new_name
	ass_type = new_ass_type
	ass_time = new_ass_time
	ass_diff = new_ass_diff
