extends Panel

@onready var rich_text_label = $RichTextLabel
@onready var next = $HBoxContainer/Next
@onready var prev = $HBoxContainer/Prev


var story

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.story_update.connect(_on_story_update)
	prev.pressed.connect(_on_prev_pressed)
	next.pressed.connect(_on_next_pressed)
	print("Greeting card ready")
	
func _on_next_pressed():
	if story != null:
		Events.next_story.emit(story["id"])
		
func _on_prev_pressed():
	if story != null && (story["id"] - 2) >= 0:
		Events.next_story.emit(story["id"]-2)
		
func _on_story_update(_story):
	story = _story
	rich_text_label.text = story["story"]
	
 
