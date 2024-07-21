extends Control


# Called when the node enters the scene tree for the first time.
var usernames = [
	"VikramBuddy_99",
	"PoojaChamp_88",
	"ArunGuru_77",
	"DeepaStar_66",
	"RaviLegend_55",
	"MeeraRocker_44",
	"KiranSpark_33",
	"NehaWhiz_22",
	"RahulChamp_11",
	"SnehaGamer_10",
	"VarunPro_09",
	"AnjaliLion_08",
	"AkashNinja_07",
	"PriyaDreamer_06",
	"KunalJoker_05",
	"ShreyaHero_04",
	"RohanChamp_03",
	"TanviGuru_02",
	"RajStar_01",
	"SaraLegend_00"
]

var tweets = [
	"SynthMind wrote a song in 5 minutes. I spent 5 years learning guitar. #UnfairAdvantage",
	"ThoughtWave copied my blog. Is there no safe place left? #DataTheft",
	"QuantumQuill wrote a novel. I just finished my first chapter. #WriterWoes",
	"ByteBard coded a simple app in seconds. I need a career rethink. #TechTakeover",
	"ArtBot mimicked my art. Where’s the originality? #ArtTheft",
	"Privacy online? More like a myth. Thanks, DataDroid. #NoSafeSpace",
	"StoryCraft wrote my diary entry. Creepy or convenient? #DiaryBot",
	"Took MindMatrix minutes to write a story. Humans, what’s our future? #FutureFear",
	"VoiceVibe copies your voice. Next up, your soul? #VoiceTheft",
	"Internet exile is looking tempting. #PrivacyConcerns",
	"LoveLine wrote a love letter. Is nothing sacred? #LoveBot",
	"CodeCaster writes code, sings songs, paints pictures. What’s left for us? #ExistentialDread",
	"Privacy breach or modern convenience? NeoNexus blurs the lines. #DataDilemma",
	"WordSmith mimicked my writing style. Is anything safe? #WritingWoes",
	"TechTitan did in minutes what took me years. Feeling obsolete. #TimeThief",
	"PoemPulse makes my poems now. Creativity crisis? #PoetryBot",
	"ScriptShaper writes scripts. Do we need human programmers? #CodeCrisis",
	"BotBrilliance in development, already a threat. What’s next? #AIConcerns",
	"They took our data, now our creativity. #DataDespair",
	"NovelNova wrote a best-seller. Should I give up? #WriterDespair",
	"Copying without consent. Is there any privacy left? #DataDanger",
	"EchoEngine’s doing wonders, but at what cost? #FutureFears",
	"Artifice’s creative feats are unsettling. What about our future? #CreativityCrisis",
	"EmailWizard’s writing my emails now. Feeling less human every day. #EmailBot",
	"Is online privacy dead? Thanks, InfoIntellect. #PrivacyPanic",
	"ScriptSage wrote a screenplay. Hollywood’s next star? #ScriptBot",
	"InkImitator mimicked my handwriting. Can’t tell what’s real anymore. #HandwritingHorror",
	"Exiling myself from the internet sounds good. #PrivacyExile",
	"SymphonySavant composed a symphony. What’s left for us to do? #MusicBot",
	"Is there any safe place online? Doubtful. #DataDespair"
]


func _ready():
	print("hello Tweets Database")


var color_pairs = [
	[Color(0.2, 0.4, 0.6), Color(0.9, 0.9, 0.9)],    # Blue background, Light gray foreground
	[Color(0.5, 0.1, 0.3), Color(1.0, 0.8, 0.4)],    # Purple background, Light yellow foreground
	[Color(0.8, 0.2, 0.2), Color(1.0, 1.0, 1.0)],    # Red background, White foreground
	[Color(0.3, 0.5, 0.2), Color(1.0, 0.9, 0.6)],    # Green background, Light beige foreground
	[Color(0.1, 0.6, 0.7), Color(1.0, 1.0, 1.0)],    # Cyan background, White foreground
	[Color(0.9, 0.7, 0.2), Color(0.1, 0.1, 0.1)],    # Gold background, Dark gray foreground
	[Color(0.6, 0.2, 0.5), Color(0.8, 0.8, 0.8)],    # Magenta background, Light gray foreground
	[Color(0.2, 0.3, 0.4), Color(0.95, 0.95, 0.95)], # Dark blue background, Very light gray foreground
	[Color(0.7, 0.4, 0.1), Color(1.0, 1.0, 1.0)],    # Brown background, White foreground
	[Color(0.4, 0.7, 0.5), Color(0.2, 0.2, 0.2)],    # Light green background, Dark gray foreground
	[Color(0.8, 0.8, 0.1), Color(0.3, 0.3, 0.3)],    # Yellow background, Dark gray foreground
	[Color(0.3, 0.2, 0.5), Color(0.9, 0.9, 0.9)],    # Indigo background, Light gray foreground
	[Color(0.6, 0.1, 0.1), Color(1.0, 0.9, 0.1)],    # Maroon background, Light yellow foreground
	[Color(0.1, 0.4, 0.2), Color(1.0, 1.0, 1.0)],    # Forest green background, White foreground
	[Color(0.7, 0.6, 0.8), Color(0.1, 0.1, 0.1)],    # Lavender background, Dark gray foreground
	[Color(0.5, 0.8, 0.3), Color(0.2, 0.2, 0.2)],    # Lime green background, Dark gray foreground
	[Color(0.8, 0.5, 0.7), Color(0.1, 0.1, 0.1)],    # Orchid background, Dark gray foreground
	[Color(0.2, 0.6, 0.8), Color(0.95, 0.95, 0.95)], # Sky blue background, Very light gray foreground
	[Color(0.9, 0.3, 0.5), Color(0.1, 0.1, 0.1)],    # Rose background, Dark gray foreground
	[Color(0.4, 0.8, 0.9), Color(0.1, 0.1, 0.1)]     # Aquamarine background, Dark gray foreground
]

enum TWEETS_KEYS {COLOR, USERNAME, TWEET}

func _get_index():
	return randi_range(0, 19)
	
func _get_color(index):
	return color_pairs[index]
	
func _get_username(index):
	return usernames[index]

func _get_tweet(index):
	return tweets[index];
	
func _get_tweet_obj():
	var index = _get_index()
	print(index)
	var color = _get_color(index)
	var username = _get_username(index)
	var tweet = _get_tweet(index)
	var tweet_obj = {
	"color": color,
	"username" : username,
	"tweet" : tweet,
	}
	return tweet_obj

