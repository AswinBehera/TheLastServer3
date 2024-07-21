extends Control

@onready var tweet_animation_player = $Tweets/TweetAnimationPlayer
@onready var tweets = $Tweets
@onready var main_menu_animation_player = $MainMenuAnimationPlayer

@export var next_level : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	#tweets.visible = false
	pass # Replace with function body.

func _start_anim():
	pass
	tweet_animation_player.play("MainMenuEntry")
	#tweets.visible = true 



func _on_launch_pressed():
	main_menu_animation_player.play("Exit") # Replace with function body.

func _switch_level():
	LevelManager.switch_level.emit(next_level)
