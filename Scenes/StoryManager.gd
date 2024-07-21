extends Panel

@onready var greet_anims = $GreetAnims
@export var next_level:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.next_story.connect(_on_next_story_req)
	Events.story_update.emit(stories[0]) 

func _on_next_story_req(id):
	print(id)
	if id < stories.size():
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
		{"id": 1, "story": "[b]Once upon a time,[/b] there was a [i]small village[/i] nestled in the [size=24][color=green]mountains[/color][/size]."},
		{"id": 2, "story": "In this village, lived a [color=blue][size=22]young girl[/size][/color] named [u]Ella[/u], who [b][color=orange]dreamed[/color][/b] of [size=20][i]adventure[/i][/size]."},
		{"id": 3, "story": "One day, she discovered a [size=20][color=purple]mysterious map[/color][/size] hidden in her attic."},
		{"id": 4, "story": "The map led to a [b][color=green][size=24]hidden treasure[/size][/color][/b] deep in the forest."},
		{"id": 5, "story": "With a [size=22][i]brave heart[/i][/size] and [u][size=20]determination[/size][/u], Ella set off on her [b][color=red][size=26]journey[/size][/color][/b]."}
	]
 
