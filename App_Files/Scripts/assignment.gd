extends Node
class_name	new_assignment

# type of assignment, defined through a preditermined list of possible assignments
var ass_type: int
# time in minutes
var ass_time: int
# difficulty on a scale of easy to difficult
var ass_diff: int

# This function assigns values for the current assignment 
func make_new_assignment(new_name, new_ass_type, new_ass_time, new_ass_diff):
	
	name = new_name
	ass_type = new_ass_type
	ass_time = new_ass_time
	ass_diff = new_ass_diff
	
	print(name + " " + str(ass_type) + " " + str(ass_time) + " " + str(ass_diff))
