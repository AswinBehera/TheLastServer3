extends PanelContainer

@onready var tweet_db = $TweetDB

@onready var profile_pic = $MarginContainer/HBoxContainer/ProfilePic
@onready var username = $MarginContainer/HBoxContainer/VBoxContainer/username
@onready var tweet = $MarginContainer/HBoxContainer/VBoxContainer/tweet


# Called when the node enters the scene tree for the first time.
func _ready():
	print("hello Tweets")
	_switch_tweet()
	
func _switch_tweet():
	print("switching")
	var tweet_obj    = tweet_db._get_tweet_obj()
	profile_pic._switch(tweet_obj["color"])
	username.text    = tweet_obj["username"]
	tweet.text		 = tweet_obj["tweet"]
	
