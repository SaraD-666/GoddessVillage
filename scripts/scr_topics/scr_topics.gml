global.topics = {};

//intro
global.topics[$ "Bus"] = [
	TEXT("Your name is Jess"),
	TEXT("You are a documentary photographer."),
	TEXT("You are really interested in diverse cultures and anecdotes."),
	TEXT("You've heard that there exists a small village by this mountain far away from the city."),
	TEXT("Unlike other remote villages, this one has always promoted the idea of valuing females over males, at least that's what's being told to the outside world."),
	TEXT("Driven by a strong curiosity about this unique ideology, you decide to go alone with a camera to explore and find out more."),
	TEXT("Before setting out, you've done a lot of research."),
	TEXT("Many enthusiasts with the same interest have visited this place, attempting to capture the village."),
	TEXT("But most were unable to find the entrance to the village and had to return without getting more information."),
	TEXT("Furthermore, you've heard that in this village, they hold a kind of ceremonial event to worship their goddess."),
	TEXT("You hope to encounter this event during your visit and wish to have the opportunity to record it."),
	TEXT("Finally, after countless hours, you, exhaustedly, have arrived at your destination and gotten off the bus.")
];

//选项
global.topics[$ "Which Direction"] = [
	CHOICE("Which direction to go...?",
		OPTION("Go right", "Chose Right"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Left1"] = [
	CHOICE("Now..Where?",
		OPTION("Go right", "Chose Right"),
		OPTION("Go left", "Chose Left2"))
];

global.topics[$ "Chose Left2"] = [
	CHOICE("Ughh, almost there?",
		OPTION("Go right", "Chose Arrived"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Right"] = [
	CHOICE("........",
		OPTION("Go right", "Which Direction"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Arrived"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Holy...")
];


//into the village
global.topics[$ "Into the village"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Oh my god! Is that the entrance to the village?"),
	SPEAKER("", noone, noone),
	TEXT("you stumbled upon the entrance to the village that many others could not find."),
	TEXT("You felt a surge of excitement, convinced that you would definitely be able to produce a documentary with substantial content."),
];

global.topics[$ "See the statue"] = [
	TEXT("As soon as you entered the village with your camera, you were captivated by a sculpture in front of you.")
];

global.topics[$ "complement statue"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Is this... the goddess? It's really... truly beautiful..."),
	SPEAKER("", noone, noone),
	TEXT("Just as you were deeply absorbed in admiration, someone hurriedly interrupted you."),
	SPEAKER("??", noone, noone),
	TEXT("Hey! How dare you!")
];

global.topics[$ "Old lady yells"] = [
	SPEAKER("??", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("you little brat, look around so carelessly? This sculpture is not meant to be seen by just anyone."),
	SPEAKER("", noone, noone),
	TEXT("You see this old lady quickly approaches you with a mad face."),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Oh...I'm...I'm sorry."),
	TEXT("I'm not trying to offend anyone by any means."),
	TEXT("My name is Jess, and I'm a photographer who's really interested in this beautiful village's culture."),
	TEXT("I've heard that there's a Goddess in this village that anyone is worshiping. Is that this statue?"),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Ahhh I see."),
	TEXT("So you are one of those who's here to see our Goddess aren't you?"),
	TEXT("Just call me Wangpo. Everyone in this village calls me that."),
	TEXT("Ahhh, our village is indeed...a good place to live."),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Yes! Nice to meet you Mrs.Wangpo."),
	TEXT("I've also heard that this village is also called the heaven for women, in which we value females over males."),
	TEXT("Is that true?"),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Hahah!"),
	TEXT("Is that how they describe us outside?"),
	TEXT("I guess so? Our husbands love us, our boys obey us, and our girls were raised divinely."),
	TEXT("If that's what is called heaven, I guess so."),
	SPEAKER("", noone, noone),
	TEXT("You nodded, becoming increasingly curious about the lifestyle within the village."),
	TEXT("However, for some reason, you couldn't shake off a feeling that something was amiss."),
	TEXT("Perhaps it was just your imagination running wild."),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Jess, my poor girl, you must have been so tired now aren't you?"),
	TEXT("It must be a long and exhausting trip isn't it?"),
	CHOICE("It seems that this old lady Wangpo is pretty nice and genuine. Since there's no place in this village that takes visitors, should you ask her to take you in?",
		OPTION("Yes!", "Chose Wangpo"),
		OPTION("No...", "Chose village head"))
];

global.topics[$ "Chose Wangpo"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("A little bit..."),
	TEXT("Oh and Mrs. Wangpo, may I also ask if you are willing to take me in for a while as I'm visiting?"),
	TEXT("I know I'm asking a lot but...I don't see any inn or hotel here so I don't really have a place to stay. If I may..."),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Of course! Of course... but..."),
	SPEAKER("", noone, noone),
	TEXT("You see Wangpo hesitant a little bit..."),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Oh no worries!"),
	TEXT("Thank you Mrs.Wangpo, I'm just asking to see if you are available, and if it bothers you, just forget what I've asked."),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Nonononono, I didn't mean it Jess."),
	TEXT("It's...it's just that we are not allowed to just take visitors home without permission."),
	GOTO("End of intro room")
];

global.topics[$ "Chose village head"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Thank you Mrs.Wangpo, I'm good."),
	TEXT("Though I do want to know where I could find the head of this village?"),
	TEXT("I realized that there's not any inn or any hotels in this village. So I'm wondering if the head of the village might know if any houses are empty..."),
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("Oh yes, indeed you should go find the village head."),
	GOTO("End of intro room")
];

global.topics[$ "End of intro room"] = [
	SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
	TEXT("All visitors have to go see the village head. And it must be the head that decides who are the houses that could take you."),
	TEXT("And then you could choose from one of the families the head pointed."),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("I see! Thank you so much Mrs.Wangpo. I will go visit the village head right now!"),
];


//meet the village head
global.topics[$ "On the way to Village"] = [
	SPEAKER("", noone, noone),
	TEXT("You are walking slowly towards the village head's house. The one Wangpo pointed to you."),
	TEXT("As you are walking towards it, your grab the camera and started to take photos and videos for later use."),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Awwww, look at those cute little girls. They are enjoying their life so much."),
	SPEAKER("", noone, noone),
	TEXT("On your right side, there are several of girls from ages about 2 to 14, sitting by the rivers."),
	TEXT("Each individual group of girls were doing their own work"),
	TEXT("Some are reading books, some are singing and dancing, and some are playing with the mud"),
	TEXT("And on your left side are young boys and man working in the field, growing food"),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Huh, they actually do value women above men!"),
	TEXT("No girls are working, and they are all free to do whatever they want!"),
	TEXT("Can't imagine if I was like this when I was little"),
	SPEAKER("", noone, noone),
	TEXT("You've passed a lot of houses on the way to the village head's house."),
	TEXT("In almost every houses, there sits a lady. Some are a bit younger but most are old"),
	TEXT("You are not quite sure how old they are so you go up and ask them."),
	TEXT("Most tells you that they are 50ish almost 60, and only a few that are about 30."),
	TEXT("Furthermore, all of them look older than they should be"),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Hmmm, I guess ladies here really don't work that much."),
	TEXT("But why...where are all the girls from the ages 15 - 30?"),
	TEXT("I see men in all ages, working...but what the about girls?"),
	TEXT("I can't... I gotta ask the village head...")
];

global.topics[$ "Let me see vh"] = [
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("So this is the village head's house."),
	TEXT("Let me knock on the door"),
	SPEAKER("", noone, noone),
	TEXT("Knock knock"),
	SPEAKER("??", noone, noone),
	TEXT("Who is it?"),
	SPEAKER("", noone, noone),
	TEXT("An old male voice coming from inside of the house. Sounded with a bit of frustration"),
	SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! I'm a visitor to the village. May I talk to the head of the village please?"),
	SPEAKER("??", noone, noone),
	TEXT("Oh...oh okay, come in first please"),
];

/*
TEXT(""),
SPEAKER("You", spr_player, PORTRAIT_SIDE.LEFT),
SPEAKER("", noone, noone),
SPEAKER("Wangpo", spr_wangpo, PORTRAIT_SIDE.RIGHT),
*/