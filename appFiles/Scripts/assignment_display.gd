extends PanelContainer

@onready var ass_name_ui: Label = %ass_name_ui
@onready var ass_diff_ui: Label = %ass_diff_ui
@onready var ass_type_ui: Label = %ass_type_ui
@onready var ass_time_ui: Label = %ass_time_ui

var saved_assignment_index: int

func assign_ui(ass_index: int):
	
	var selected_ass = AssignmentManager.get_child(ass_index)
	
	name = selected_ass.name + " UI Container"
	ass_name_ui.text = selected_ass.name
	ass_diff_ui.text = "Difficulty: " + selected_ass.ass_diff_str
	ass_type_ui.text = "Type: " + selected_ass.ass_type_str
	ass_time_ui.text = "Time: " + str(selected_ass.ass_time_min) + " sec."
	
	saved_assignment_index = ass_index


func _on_button_pressed() -> void:
	
	AssignmentManager.get_child(saved_assignment_index - 1).start_assignment()
	get_tree().change_scene_to_file("res://appFiles/Scenes/main_menu.tscn")
