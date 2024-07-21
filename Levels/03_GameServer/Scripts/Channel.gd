extends Button

@export var isDefault : bool
@export var defaultTheme:Theme
@export var activeTheme:Theme

# Called when the node enters the scene tree for the first time.
func _ready():
	if isDefault == true:
		theme = activeTheme
	else:
		theme = defaultTheme
		
	Events.channel_changed.connect(_on_channel_changed)

func _on_channel_changed(new_channel):
	if text == new_channel:
		theme = activeTheme
	else:
		theme = defaultTheme

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_pressed():
	Events.channel_changed.emit(text)
