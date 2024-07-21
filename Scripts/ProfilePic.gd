extends Panel
@onready var bg = $bg
@onready var fg = $fg


# Called when the node enters the scene tree for the first time.
func _switch(color_pair):
	bg.modulate = color_pair[0]
	fg.modulate = color_pair[1]

