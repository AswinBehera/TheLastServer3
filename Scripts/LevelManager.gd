extends Node

var current_scene = null

signal switch_level(scene)

func _ready():
	switch_level.connect(_on_switch_level)
	
func _on_switch_level(scene):
	_load_scene(scene)

func _load_scene(scene):
	get_tree().change_scene_to_packed(scene)
	

	
