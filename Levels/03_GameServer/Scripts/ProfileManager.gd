extends Control

@onready var profile_manager_anim = $"Profile/ProfileManager anim"
@onready var profile_db = $ProfileDB
@onready var profile = $Profile

var index = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Events.profile_screening.connect(_on_profile_screening)
	Events.profile_action.connect(_on_profile_action)
	profile.populate(profile_db._get_user_data())
	
func _on_profile_action(value):
	profile_manager_anim.play("Exit")
	
func _on_profile_screening(enable):
	if enable == true:
		profile_manager_anim.play("Entry")
