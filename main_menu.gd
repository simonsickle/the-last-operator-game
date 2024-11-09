extends Control

@onready var continue_button := $VBoxContainer/ContinueButton
@onready var new_game_button := $VBoxContainer/NewGameButton
@onready var exit_button := $VBoxContainer/ExitButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game_button.connect("button_down", _on_new_game)
	exit_button.connect("button_down", _on_exit_click)
	
	## TODO: add game saves and unhide this button
	continue_button.visible = false

func _on_new_game():
	get_tree().change_scene_to_file("res://new_game/beginning.tscn")
	
func _on_exit_click():
	get_tree().quit()
