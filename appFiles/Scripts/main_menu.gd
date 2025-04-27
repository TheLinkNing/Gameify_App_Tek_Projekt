extends Control

@export var lock_icon: Texture2D

@onready var start_assignments: Button = %start_assignments
@onready var start_game: Button = %start_game

func _on_create_assignments_pressed() -> void:
	get_tree().change_scene_to_file("res://appFiles/Scenes/assignment_input.tscn")
	
func _on_start_assignments_pressed() -> void:
	get_tree().change_scene_to_file("res://appFiles/Scenes/assignment_display_list.tscn")

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://gameFiles/scenes/game.tscn")

func _process(_delta: float) -> void:
	
	if AssignmentManager.is_assignment_running == true:
		start_assignments.disabled = true
		start_assignments.icon = lock_icon
	if start_assignments.icon != null:
		start_assignments.icon = null
		get_tree().change_scene_to_file("res://appFiles/Scenes/main_menu.tscn")
	if AssignmentManager.num_of_completed_ass >= 5:
		start_game.icon = null
		start_game.disabled = false
		
