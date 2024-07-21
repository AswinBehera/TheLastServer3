extends Control
@onready var begin = $Begin


# Called when the node enters the scene tree for the first time.
func _ready():
	begin.pressed.connect(_on_begin)
	
func _on_begin():
	begin.visible = false
	#begin.paused = true
	Events.profile_screening.emit(true)

