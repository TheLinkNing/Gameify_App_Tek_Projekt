extends Control


# runs when button to confirm new assignment is pressed
func _on_button_pressed() -> void:
	# variables to hold input from the UI
	var ass_name: String = %input_name.text
	var ass_type = %type_option.selected
	var ass_time = %time_option.selected
	var	ass_diff: int = %diff_slider.value
	AssignmentManager.instantiate_new_assignment(ass_name, ass_type, ass_time, ass_diff)
	
