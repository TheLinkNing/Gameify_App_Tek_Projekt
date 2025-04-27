extends Control

@onready var assignment_seperator: VBoxContainer = %AssignmentSeperator

@export var assignment_display: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	var num_of_ass: int = AssignmentManager.get_child_count()
	
	for n in num_of_ass:
		var current_ass = assignment_display.instantiate()
		assignment_seperator.add_child(current_ass)
		current_ass.assign_ui(n)
	
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://appFiles/Scenes/main_menu.tscn")
