extends Control


var profiles = [
	{
		"display_name": "AliceWonder",
		"user_name": "alwd#1234",
		"user_data": "I love reading books and exploring new places.",
		"meta_data": "Joined multiple book-related groups",
		"email": "alicewonder@gmail.com",
		"ip": "192.168.1.1",
		"type": "human",
		"inference": "Joins book-related groups and shares personal interests typical of a human."
	},
	{
		"display_name": "BobBuilder",
		"user_name": "bbbl#5678",
		"user_data": "DIY enthusiast. Building my dream house.",
		"meta_data": "Regularly shares DIY tips",
		"email": "bob.builder@yahoo.com",
		"ip": "192.168.1.2",
		"type": "human",
		"inference": "Shares detailed personal projects and tips, consistent with human behavior."
	},
	{
		"display_name": "CharlieCode",
		"user_name": "chcd#9101",
		"user_data": "Software developer. Coding is my passion.",
		"meta_data": "Frequently posts about programming",
		"email": "charlie.code@outlook.com",
		"ip": "192.168.1.3",
		"type": "human",
		"inference": "Posts detailed programming content and engages in coding discussions, typical of a human."
	},
	{
		"display_name": "DaisyDreamer",
		"user_name": "dadr#2345",
		"user_data": "Daydreaming about the stars and the universe.",
		"meta_data": "Active in astronomy discussions",
		"email": "daisy.dreamer@gmail.com",
		"ip": "192.168.1.4",
		"type": "human",
		"inference": "Engages in specific hobby discussions like astronomy, indicative of human interests."
	},
	{
		"display_name": "EveExplorer",
		"user_name": "evex#6789",
		"user_data": "Adventurer. Always looking for the next big journey.",
		"meta_data": "Shares travel photos",
		"email": "eve.explorer@rediff.com",
		"ip": "192.168.1.5",
		"type": "human",
		"inference": "Shares personal travel experiences and photos, consistent with human activity."
	},
	{
		"display_name": "DealsExpert",
		"user_name": "deex#1234",
		"user_data": "Unbeatable deals on electronics! Click now to save big.",
		"meta_data": "Frequently posts spammy discount links",
		"email": "deals_expert@yahoo.com",
		"ip": "192.168.2.1",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Aggressively promotes electronics deals and posts suspicious links, indicative of a harmful bot."
	},
	{
		"display_name": "TriviaSpam",
		"user_name": "trsp#9101",
		"user_data": "Did you know? Honey never spoils. Learn more here!",
		"meta_data": "Spams trivia and malicious links",
		"email": "trivia_spam@gmail.com",
		"ip": "192.168.2.2",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Constantly sends trivia with malicious links, typical of a spam bot with harmful intent."
	},
	{
		"display_name": "GiveawayGuru",
		"user_name": "gg#2345",
		"user_data": "Win a free iPhone! Click to claim your prize now!",
		"meta_data": "Posts frequent giveaway scams",
		"email": "giveaway_guru@rediff.com",
		"ip": "192.168.2.3",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Promotes fake giveaways and scams, indicative of a high-risk spam bot."
	},
	{
		"display_name": "BreakingNews24",
		"user_name": "bn24#7890",
		"user_data": "Breaking news: Major event happening now!",
		"meta_data": "Posts fake news updates frequently",
		"email": "breakingnews_24@gmail.com",
		"ip": "192.168.2.4",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Disseminates frequent fake news updates, indicative of a bot with harmful intent."
	},
	{
		"display_name": "GadgetPromo",
		"user_name": "gp#1122",
		"user_data": "Amazing discounts on gadgets. Don’t miss out!",
		"meta_data": "Joins and leaves servers often, posts fake deals",
		"email": "gadget_promo@rediff.com",
		"ip": "192.168.2.5",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Frequently posts fake gadget deals and changes servers, indicative of a disruptive bot."
	},
	{
		"display_name": "InvestmentTips",
		"user_name": "it#3344",
		"user_data": "Get rich quick! Best investment opportunities inside.",
		"meta_data": "Shares phishing investment schemes",
		"email": "investment_tips@yahoo.com",
		"ip": "192.168.2.6",
		"type": "bot",
		"damage_level": "danger",
		"inference": "Shares phishing schemes for investments, indicative of a scam bot with high risk."
	},
	{
		"display_name": "FunFactAlert",
		"user_name": "ffa#5566",
		"user_data": "Fun fact: The longest river in the world is the Nile.",
		"meta_data": "Sends fun facts with suspicious links",
		"email": "funfact_alert@gmail.com",
		"ip": "192.168.2.7",
		"type": "bot",
		"damage_level": "mild",
		"inference": "Shares fun facts alongside suspicious links, indicative of a bot with mild malicious intent."
	}
];

func _get_user_data():
	var index = randi_range(0, profiles.size()-1)
	print(profiles[index])
	return profiles[index]
