extends Node

var current_scene = null

signal switch_level(scene)

signal change_level(scenepath)

func _ready():
	switch_level.connect(_on_switch_level)
	change_level.connect(_on_change_level)
	
func _on_switch_level(scene):
	_load_scene(scene)

func _load_scene(scene):
	get_tree().change_scene_to_packed(scene)
	
func _on_change_level(new_scene_path):
	get_tree().change_scene_to_file(new_scene_path)
	
