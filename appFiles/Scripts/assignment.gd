extends Node
class_name new_assignment

# type of assignment in int
var ass_type: int
# type of assignment derived from ass_type
var ass_type_str: String:
	get:
		match ass_type:
			0:
				return "Creative"
			1:
				return "Logical"
			2:
				return "Exercise"
			3:
				return "Chores"
			_:
				return "idk"

# time in int
var ass_time: int
# time in minutes, where it derives the time based on ass_time
var ass_time_min: int:
	get:
		match ass_time:
			0:
				return 5
			1:
				return 10
			2:
				return 15
			3:
				return 30
			_:
				return 68

# difficulty in int
var ass_diff: int
# difficulty from easy to hard derives the difficulty from ass_diff
var ass_diff_str: String:
	get:
		match ass_diff:
			0:
				return "Easy"
			1:
				return "Normal"
			2:
				return "Hard"
			_:
				return "IMPOSSIBLE"

# a reference to the timer node and the audio_stream_player as variables
@onready var timer: Timer = $Timer
@onready var audio_stream_player: AudioStreamPlayer2D = $AudioStreamPlayer2D


# This function assigns values for the current instance of assignment 
func make_new_assignment(new_name, new_ass_type, new_ass_time, new_ass_diff):
	
	name = new_name
	ass_type = new_ass_type
	ass_time = new_ass_time
	ass_diff = new_ass_diff
	
	# sets correct time for the timer
	timer.wait_time = ass_time_min
	
	# prints the results for debuging purposses
	print(name + " " + ass_type_str + " " + str(ass_time_min) + "min. " + ass_diff_str)

func start_assignment():
	timer.start()
	AssignmentManager.is_assignment_running = true

# called on timer timeout, to reward the user
func _on_timer_timeout() -> void:
	audio_stream_player.playing = true
	AssignmentManager.is_assignment_running = false
	AssignmentManager.num_of_completed_ass += 1
	get_tree().change_scene_to_file("res://appFiles/Scenes/main_menu.tscn")
