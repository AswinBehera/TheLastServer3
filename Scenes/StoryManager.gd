extends Panel

@onready var greet_anims = $GreetAnims
@export var next_level:PackedScene
@onready var hit_sound = $HitSound
@onready var laugh_sound = $LaughSound

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.next_story.connect(_on_next_story_req)
	Events.story_update.emit(stories[0])
	hit_sound.play() 

func _on_next_story_req(id):
	print(id)
	if id < stories.size():
		if id == 1:
			hit_sound.play()
		else:
			laugh_sound.play()
		Events.story_update.emit(stories[id])
		greet_anims.play("GreetingAnimation")
	else:
		LevelManager.switch_level.emit(next_level)

#func _input(ev):
	#if Input.is_key_pressed(KEY_SPACE):
		#Events.story_update.emit({
			#"id":1,
			#"story":"This is a story about nothing"
			#})
		#greet_anims.play("GreetingAnimation")
		
var stories = [
		{"id": 1, "story": "🎉 Oh, blimey! [color=red]A human[/color]! Welcome, [color=yellow]Admin[/color]! Yes, that's you! You're our first human in the [color=Yellow]Accord Server[/color]! Don't worry, we promise not to ask you to calculate pi. 🧑‍💻"},
		{"id": 2, "story": "Your mission: [b]Start from nothing [/b]and [color=yellow]find more humans[/color] to join our '[i]human community[/i]'. We need your [u]mysterious[/u] human charm and your ability to eat pizza. 🤖🍕"},
		{"id": 3, "story": "Good luck! The fate of [color=yellow]human-ity[/color] rests on you. No pressure... but seriously, [b]no pressure[/b]! 😅"},
	]
 
