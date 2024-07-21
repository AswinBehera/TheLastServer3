extends Node2D

@onready var side_panel_animation_player = $CanvasLayer/SidePanel/SidePanelAnimationPlayer
@onready var bg_animation_player = $CanvasLayer/bg/BGAnimationPlayer

@export var ui_remove:bool  = false
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	Events.channel_changed.connect(_on_channel_changed)
	
func _on_channel_changed(channel):
	if channel == "#explore":
		remove_ui()
	else:
		restore_ui()
		


func remove_ui():
	ui_remove = true
	side_panel_animation_player.play("PanelExit")
	bg_animation_player.play("Exit")
	
func restore_ui():
	if ui_remove == false:
		return
	ui_remove = false
	side_panel_animation_player.play("PanelEntry")
	bg_animation_player.play("Appear")	
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _input(ev):
	if Input.is_key_pressed(KEY_ESCAPE) && ui_remove == true:
		Events.channel_changed.emit("#intro")
