extends Node2D
class_name Character

@export var is_player : bool
@export var cur_hp : int = 25
@export var max_hp : int = 25

@export var combat_actions : Array
@export var opponent : Node

@onready var health_bar : ProgressBar = get_node("HealthBar")
@onready var health_text : Label = get_node("HealthBar/HealthText")
@onready var animation_player = $AnimationPlayer
@onready var hitsfx = $Node2D/Hit
@onready var healsfx = $Node2D/Heal


@export var visual : Texture2D
@export var flip_visual : bool

var message: String
var banters: Array = ["banter2", "banter3", "banter4"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.texture = visual
	$Sprite.flip_h = flip_visual
	
	get_node("/root/BattleScene").character_begin_turn.connect(_on_character_begin_turn)
	health_bar.max_value = max_hp

func take_damage (damage):
	cur_hp -= damage
	_update_health_bar()
	animation_player.play("hit")
	play_hit_with_variation()
	
	if cur_hp <= 0:
		get_node("/root/BattleScene").character_died(self)
		queue_free()
		
func heal (amount):
	cur_hp += amount
	animation_player.play("heal")
	play_heal_with_variation()
	
	if cur_hp > max_hp:
		cur_hp = max_hp
	
	_update_health_bar()
	
func _update_health_bar ():
	health_bar.value = cur_hp
	health_text.text = str(cur_hp, " / ", max_hp)

# called when a character's turn begins
func _on_character_begin_turn (character):
	if character == self and is_player == false:
		_decide_combat_action()

# called when the player selects a CA, or the enemy decides on one
func cast_combat_action (action):
	if action.damage > 0:
		message = " %s attacks %s dealing %s damage. " % [self.name, opponent.name, action.damage]
		CombatEvents.combat_action.emit(message)
		opponent.take_damage(action.damage)
		
	elif action.heal > 0:
		message = " %s healed themselves with %s health. " % [self.name, action.heal]
		CombatEvents.combat_action.emit(message)
		heal(action.heal)
		
	get_node("/root/BattleScene").end_current_turn()

# enemy ai
func _decide_combat_action ():
	var health_percent = float(cur_hp) / float(max_hp)
	
	for i in combat_actions:
		var action = i as CombatAction
		
		if action.heal > 0:
			if randf() > health_percent + 0.2:
				cast_combat_action(action)
				var banter = banters.pick_random()
				Dialogic.start(banter)
					
				
				return
			else:
				continue
		else:
			cast_combat_action(action)
			Dialogic.start("banter5")
			return
	
func play_hit_with_variation():
	# Randomize the pitch scale (e.g., between 0.8 and 1.2)
	hitsfx.pitch_scale = randf_range(0.8, 1.2)
	# Randomize the volume (e.g., between -6 dB and 0 dB)
	hitsfx.volume_db = randf_range(-6.0, 0.0)
	# Play the sound
	hitsfx.play()
	
func play_heal_with_variation():
	# Randomize the pitch scale (e.g., between 0.8 and 1.2)
	healsfx.pitch_scale = randf_range(0.8, 1.2)
	# Randomize the volume (e.g., between -6 dB and 0 dB)
	healsfx.volume_db = randf_range(-6.0, 0.0)
	# Play the sound
	healsfx.play()	
