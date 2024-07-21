extends Control

@onready var animation_player = $AnimationPlayer
@export var next_level:PackedScene  

func _ready():
	animation_player.play("SplashScreenAnimation")

func nextLevel():
	LevelManager.switch_level.emit(next_level)
