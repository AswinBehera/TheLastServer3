extends Panel

@onready var banner = $banner
@onready var dp = $DP
@onready var display_name = $VBoxContainer/displayName
@onready var user_name = $VBoxContainer/HBoxContainer/userName
@onready var userinfo = $VBoxContainer/userinfo
@onready var metadata = $VBoxContainer/metadata
@onready var email = $VBoxContainer/HBoxContainer/email
@onready var ip = $VBoxContainer/HBoxContainer/ip

var colors = ["#35CC56", "#DB534D", "#5C9AE7", "#FEE75D"]

var userdata = {
		"display_name": "auto_response",
		"user_name": "auro#3456",
		"user_data": "Hello! How can I assist you today?",
		"online_date_range": "01/01/2021 - Present",
		"meta_data": "Replies instantly and consistently",
		"email": "autoresponse@botmail.com",
		"ip":"192.168.1.1"
	}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func populate(data):
	print(data)
	var col = Color(colors[randi_range(0, colors.size()-1)])
	banner.modulate = col
	dp.modulate = col
	
	display_name.text = data["display_name"]
	user_name.text = data["user_name"]
	email.text = data["email"]
	
	userinfo.text = data["user_data"]
	metadata.text = data["meta_data"]
	
	ip.text = data["ip"]
