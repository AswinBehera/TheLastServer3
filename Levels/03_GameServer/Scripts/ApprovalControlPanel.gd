extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_approve_pressed():
	Events.profile_action.emit(true)


func _on_reject_pressed():
	Events.profile_action.emit(false)
