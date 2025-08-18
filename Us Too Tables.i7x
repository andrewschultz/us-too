Version 1/241005 of Us Too Tables by Andrew Schultz begins here.

"This lays out the major tables for Us Too for easy indexing and searching, as well as any rules related to the tables."

[REMINDER: mrc.py to create new point scoring action]

volume the main table

[note: # of rows != total points since we start with HOW SO]

table of main oronyms
w1 (text)	w2 (text)	first-hom (text)	second-hom	hom-txt-rule (rule)	first-exact	first-close	second-exact	second-close	part-explain	think-cue	okflip	core	idid	everfail	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"loose"	"intro"	--	--	--	false	false	false	false	"finding something hidden in the lucent row"	false	true	false	false	false	my new mine ooh	pre-loose-intro rule	post-loose-intro rule	--	--
"try"	"quest"	--	--	--	false	false	false	false	"how to get started and what to do"	false	true	true	false	false	mine ooh	pre-try-quest rule	post-try-quest rule	--	--
"be"	"strong"	--	--	--	false	false	false	false	"getting rid of the beast"	false	true	true	false	false	mine ooh	pre-be-strong rule	post-be-strong rule	--	--
"nice"	"warm"	--	--	--	false	false	false	false	"making the swarm less aggressive"	false	true	true	false	false	mine ooh	pre-nice-warm rule	post-nice-warm rule	--	--
"mess"	"pot"	--	--	--	false	false	false	false	"making the spot into something more useful"	false	true	true	false	false	mine ooh	pre-mess-pot rule	post-mess-pot rule	--	--
"meh"	"skit"	--	--	--	false	false	false	false	"having harmless, useless fun with the mess kit"	false	true	false	false	false	mine ooh	pre-meh-skit rule	post-meh-skit rule	--	--
"a"	"stew"	--	--	--	false	false	false	false	"achieving the game's objective"	false	true	true	false	false	mine ooh	pre-a-stew rule	post-a-stew rule	--	"You can make [b]A STEW[r] [once-now of pre-a-stew rule] you have all the ingredients you need."
"herb"	"ranch"	--	--	--	false	false	false	false	"finding the first place to visit from the Ur-Branch"	false	true	true	false	false	ur branch	pre-herb-ranch rule	post-herb-ranch rule	--	--
"summer"	"bay"	--	--	--	false	false	false	false	"letting the herb reveal a new location"	false	true	true	false	false	ur branch	pre-summer-bay rule	post-summer-bay rule	--	--
"blah"	"copse"	--	--	--	false	false	false	false	"avoiding the black ops"	false	true	true	false	false	ur branch	pre-blah-copse rule	post-blah-copse rule	--	--
"guard"	"entry"	--	--	--	false	false	false	false	"finding a way past the garden tree"	false	true	true	false	false	ur branch	pre-guard-entry rule	post-guard-entry rule	--	--
"be"	"chill"	--	--	--	false	false	false	false	"dealing with the beach, ill"	false	true	true	false	false	Beach Ill	pre-be-chill rule	post-be-chill rule	--	--
"punt"	"weaker"	--	--	--	false	false	false	false	"trading with the pun tweaker"	false	true	true	false	false	Beach Ill	pre-punt-weaker rule	post-punt-weaker rule	--	--
"base"	"pikes"	--	--	--	false	false	false	false	"figuring a way through the bay spikes"	false	true	true	false	false	a pile up isle	pre-base-pikes rule	post-base-pikes rule	--	--
"pie"	"crust"	"pi"	--	--	false	false	false	false	"finding what's under the pike rust"	false	true	true	false	false	A Pile Up Isle	pre-pie-crust rule	post-pie-crust rule	--	--
"hike"	"up"	--	--	--	false	false	false	false	"reaching the high cup"	false	true	true	false	false	a pile up isle	pre-hike-up rule	post-hike-up rule	--	--
"sword"	"ark"	"soared"	--	--	false	false	false	false	"finding something in the Sore Dark"	false	true	true	false	false	sore dark	pre-sword-ark rule	post-sword-ark rule	--	--
"blast"	"ring"	--	--	--	false	false	false	false	"finding the blah string's true purpose"	false	true	true	false	false	sore dark	pre-blast-ring rule	post-blast-ring rule	--	--
"terrible"	"aid"	--	--	--	false	false	false	false	"becoming worthy of the Terra Blade"	false	true	true	false	false	sore dark	pre-terrible-aid rule	post-terrible-aid rule	--	--
"board"	"red"	"bored"	--	--	false	false	false	false	"finding something in the Bore Dread"	false	true	true	false	false	bore dread	pre-board-red rule	post-board-red rule	--	--
"malt"	"hour"	--	--	--	false	false	false	false	"befriending the guardians in the maul tower"	false	true	true	false	false	bore dread	pre-malt-hour rule	post-malt-hour rule	--	--
"join"	"aider"	--	--	--	false	false	false	false	"doing something worthwhile in the joy nadir"	false	true	true	false	false	joy nadir	pre-join-aider rule	post-join-aider rule	--	--
"dupe"	"it"	--	--	--	false	false	false	false	"making the dew pit useful"	false	true	true	false	false	joy nadir	pre-dupe-it rule	post-dupe-it rule	--	--
"nah"	"queue"	--	--	--	false	false	false	false	"repelling the [team]"	false	true	true	false	false	blah copse	pre-nah-queue rule	post-nah-queue rule	--	--
"surf"	"ready"	--	--	--	false	false	false	false	"giving Sir Freddie a new direction"	false	true	true	false	false	blah copse	pre-surf-ready rule	post-surf-ready rule	--	--
"or"	"clerk"	--	--	--	false	false	false	false	"figuring what Sir Freddie was scared of"	false	true	true	false	false	blah copse	pre-or-clerk rule	post-or-clerk rule	--	--
"more"	"flares|flare"	--	"flayers|flayer|flair|flairs"	hom-flairs-flayers rule	false	false	false	false	"activating the morph lairs"	false	true	true	false	false	morph lairs	pre-more-flares rule	post-more-flares rule	--	--
"rope"	"ladder"	--	--	--	false	false	false	false	"discovering what the row (plaider) holds"	false	true	true	false	false	morph lairs	pre-rope-ladder rule	post-rope-ladder rule	--	--
"probe"	"all"	--	--	--	false	false	false	false	"finding a purpose for the pro ball"	false	true	true	false	false	ur branch	pre-probe-all rule	post-probe-all rule	--	--
"peace"	"talks"	--	--	--	false	false	false	false	"finding something incorporeal within the Pea Stalks"	false	true	true	false	false	pea stalks	pre-peace-talks rule	post-peace-talks rule	--	--
"pea"	"pod"	--	--	--	false	false	false	false	"finding something unusual within the Pea Stalks"	false	true	false	false	false	pea stalks	pre-pea-pod rule	post-pea-pod rule	--	--
"can"	"take"	--	--	--	false	false	false	false	"dispelling the Can't-Ache"	false	true	true	false	false	dome aching	pre-can-take rule	post-can-take rule	--	--
"gray|grey"	"tin"	--	--	--	false	false	false	false	"discover what the Great Inn holds"	false	true	true	false	false	dome aching	pre-gray-tin rule	post-gray-tin rule	--	--
"dough"	"making"	--	--	--	false	false	false	false	"doing something positive in [dome]"	false	true	true	false	false	dome aching	pre-dough-making rule	post-dough-making rule	--	--
"in"	"earnest"	--	--	--	false	false	false	false	"figure how to visit the inner nest"	false	true	true	false	false	dome aching	pre-in-earnest rule	post-in-earnest rule	--	--
"pry"	"more"	--	--	--	false	false	false	false	"figuring how to take the prime oar"	false	true	true	false	false	inner nest	pre-pry-more rule	post-pry-more rule	--	--
"oh"	"clever"	--	--	--	false	false	false	false	"operating the oak lever"	false	true	true	false	false	fort earns four turns	pre-oh-clever rule	post-oh-clever rule	--	--
"bold"	"itch"	--	--	--	false	false	false	false	"figuring how to get back on your feet in Bowl/Ditch"	false	true	true	false	false	bowl ditch	pre-bold-itch rule	post-bold-itch rule	--	--
"claim"	"it"	--	--	--	false	false	false	false	"gathering the clay mitt"	false	true	true	false	false	Bowl Ditch	pre-claim-it rule	post-claim-it rule	--	--
"stark"	"raft"	--	--	--	false	false	false	false	"finding more appropriate transport than the star craft"	false	true	true	false	false	turbo tours	pre-stark-raft rule	post-stark-raft rule	--	--
"tour"	"boaters"	--	--	--	false	false	false	false	"bringing more business to Turbo Tours"	false	true	false	false	false	turbo tours	pre-tour-boaters rule	post-tour-boaters rule	--	--
"find"	"rinks"	--	--	--	false	false	false	false	"seeing another place on the Farm Isles"	false	true	true	false	false	far miles farm isles	pre-find-rinks rule	post-find-rinks rule	--	--
"barn"	"open"	--	--	--	false	false	false	false	"overcoming rejection from the bar"	false	true	true	false	false	far miles farm isles	pre-barn-open rule	post-barn-open rule	--	--
"bear"	"respond"	--	--	--	false	false	false	false	"getting the berries in Berries Pond"	false	true	true	false	false	berries pond	pre-bear-respond rule	post-bear-respond rule	--	--
"saw"	"bakers"	--	--	--	false	false	false	false	"finding signs of life in Sob Acres"	false	true	true	false	false	sob acres	pre-saw-bakers rule	post-saw-bakers rule	--	--
"dell"	"eastern"	--	--	--	false	false	false	false	"making Sob Acres less forbidding"	false	true	true	false	false	deli stern	pre-dell-eastern rule	post-dell-eastern rule	--	--
"dope"	"ale"	--	--	--	false	false	false	false	"finding something to trade your dough pail for"	false	true	true	false	false	deli stern	pre-dope-ale rule	post-dope-ale rule	--	--
"beef"	"ordering"	--	--	--	false	false	false	false	"figuring what the [toon] really means"	false	true	true	false	false	deli stern	pre-beef-ordering rule	post-beef-ordering rule	--	--
"wheat"	"rye"	--	--	--	false	false	false	false	"guessing what free samples are on offer"	false	true	true	false	false	deli stern	pre-wheat-rye rule	post-wheat-rye rule	--	--
"grow"	"nodes"	--	--	--	false	false	false	false	"seeing what's behind the groan odes"	false	true	true	false	false	groan odes	pre-grow-nodes rule	post-grow-nodes rule	--	--
"no"	"date"	--	--	--	false	false	false	false	"figuring how to destroy the nodes, or the most important one"	false	true	true	false	false	groan odes	pre-no-date rule	post-no-date rule	--	--
"fell"	"trap"	--	--	--	false	false	false	false	"revealing what's behind the felt wrap"	false	true	true	false	false	fort earns	pre-fell-trap rule	post-fell-trap rule	--	--
"cellar"	"bin"	--	--	--	false	false	false	false	"escaping the Cell, Urban"	false	true	true	false	false	cell urban	pre-cellar-bin rule	post-cellar-bin rule	--	--
"too"	"broad"	--	--	--	false	false	false	false	"how to fracture the tube/rod"	false	true	true	false	false	tube rod	pre-too-broad rule	post-too-broad rule	--	--
"ho"	"languor|langour"	--	--	--	false	false	false	false	"dealing with the paralyzing whole anger"	false	true	true	false	false	tude ark	pre-ho-langour rule	post-ho-langour rule	--	--
"say"	"jokes"	--	--	--	false	false	false	false	"get by the Sage Oaks"	false	true	true	false	false	sage oaks	pre-say-jokes rule	post-say-jokes rule	--	--
"gas"	"pouch"	--	--	--	false	false	false	false	"see how to stop gasping OUCH"	false	true	true	false	false	sage oaks	pre-gas-pouch rule	post-gas-pouch rule	--	--
"damp"	"ink"	--	--	--	false	false	false	false	"getting something from the dam"	false	true	true	false	false	dam pink	pre-damp-ink rule	post-damp-ink rule	--	--
"scry"	"broom"	--	--	--	false	false	false	false	"getting something from the Scribe Room"	false	true	true	false	false	scribe room	pre-scry-broom rule	post-scry-broom rule	--	--
"belt"	"rusted"	--	--	--	false	false	false	false	"figuring how to 'clean' the bell (trusted)"	false	true	true	false	false	scribe room	pre-belt-rusted rule	post-belt-rusted rule	--	--
"pro"	"sweeping"	--	--	--	false	false	false	false	"figuring how to clear some dust a bit"	false	true	true	false	false	dust which	pre-pro-sweeping rule	post-pro-sweeping rule	--	--
"cold"	"rum"	--	--	--	false	false	false	false	"knowing what to look for in the coal drum"	false	true	true	false	false	dust which	pre-cold-rum rule	post-cold-rum rule	--	--
"tea"	"leaves"	--	--	--	false	false	false	false	"divining what's beneath Teal Eaves"	false	true	true	false	false	dust which	pre-tea-leaves rule	post-tea-leaves rule	--	--
"summon"	"cheese"	--	--	--	false	false	false	false	"figuring what some munchies are"	false	true	true	false	false	--	pre-summon-cheese rule	post-summon-cheese rule	--	--
"den"	"specs"	--	--	--	false	false	false	false	"finding something more useful than dense pecs"	false	true	true	false	false	--	pre-den-specs rule	post-den-specs rule	--	--
"use"	"it"	--	--	--	false	false	false	false	"disobeying the throne's orders"	false	true	true	false	false	throne	pre-use-it rule	post-use-it rule	--	--
"lie"	"fruits"	--	--	--	false	false	false	false	"getting something useful from the life roots"	false	true	true	false	false	throne	pre-lie-fruits rule	post-lie-fruits rule	--	--

chapter mine ooh scoring

a wordtwisting rule (this is the pre-try-quest rule):
	if sco-try-quest is true:
		vcal "You already have an idea of your quest!";
		already-done;
	ready;

this is the post-try-quest rule:
	now sco-try-quest is true;
	say "Yes, yes. That's what really matters. Your quest.[paragraph break]You doze off, and when you awake, you find ... well, a beast, wrong, blocking your way.";
	move beast wrong to mine ooh;
	now player has aight;
	declue the player;

a wordtwisting rule (this is the pre-nice-warm rule):
	if nigh swarm is not touchable, unavailable;
	ready;

this is the post-nice-warm rule:
	now sco-nice-warm is true;
	say "The nigh swarm grows less volatile and, yes, more nice, warm. It rises in the air, then buzzes off to somewhere to maybe be nice, cool, too. Perhaps there is a nigh school![paragraph break]Behind the nigh swarm is a pro ball.";
	moot nigh swarm;
	move pro ball to beach ill;

a wordtwisting rule (this is the pre-be-strong rule):
	if player is not in mine ooh, unavailable;
	if sco-be-strong is true:
		vcal "You already felt strong! There's the matter of details, but those aren't nailed down by repetition here.";
		already-done;
	ready;

this is the post-be-strong rule:
	now sco-be-strong is true;
	say "You manage to stand up to the beast a bit. It could beat you, sure, but you're not worth the effort. It trudges off, no longer blocking you from leaving. It has easier prey. 'Be stranger, beast-ranger,' you call out, gaining confidence.";
	moot beast wrong;

a wordtwisting rule (this is the pre-mess-pot rule):
	if meh spot is not touchable and mess pot is not touchable, unavailable;
	if sco-mess-pot is true:
		vcal "You already found the mess pot!";
		already-done;
	ready;

this is the post-mess-pot rule:
	now sco-mess-pot is true;
	say "Ah. There it is. You, in fact, find a whole mess kit."; [??mess kit as synonym]
	move mess pot to mine ooh;
	moot meh spot;

a wordtwisting rule (this is the pre-meh-skit rule):
	if mess pot is not touchable, unavailable;
	if sco-meh-skit is true:
		vcal "The skit would go from meh to cringe if you did it again.";
		already-done;
	ready;

this is the post-meh-skit rule:
	now sco-meh-skit is true;
	say "Perhaps it's too obvious, but you decide to have fun, and you do.";
	declue mess pot;

a wordtwisting rule (this is the pre-a-stew rule):
	if player is not in mine ooh:
		vcp "You need to be back in your mine for this.";
		not-yet;
	if aight is unexamined:
		vcp "You think far ahead to what you might need. You'd need to read an ingredient list for that. Maybe you have one on you to start.";
		not-yet;
	if number of not carried stewitems > 0 and debug-win is false:
		vcp "You don't have all the stew ingredients you need! Currently, you have [number of carried stewitems in words] out of [number of stewitems in words].";
		not-yet;
	ready;

this is the post-a-stew rule:
	now sco-a-stew is true;
	say "You look at [aight]. You have everything you need, but you don't have, well, a cohesive dish. You remember the lawyers needling you with 'us too.' Yes, that's what it has to be. You call them and your friends. They're prepared -- the mine is omly an hour's drive from the city.";
	wfak;
	say "So you make the stew to pass the time until then. You try to avoid thinking of it as [i]my stew[r], because eww, that'd be a me-ill meal. [i]Our stew[r] might be, too.[paragraph break]You're no natural cook, but you do your best. (You make other random seeming stews over there years, and people always seem to appreciate them, but none quite has the flavor of this one.) After the meal, the announcement -- the mine is yours, and you can sell it now. You wonder if there's anything else, but you don't want to be greedy.";
	wfak;
	say "Everyone winds down by playing poker. The lawyers are, unsurprisingly, all quite good at it. Well, you're not playing with real money, so you don't mind losing. You got enough today, right? Someone asks you offhand what you call the stew. [ara] surprisingly didn't specify it. You give your answer, and you wonder if maybe there is one more subtle odd test. The lawyers seem to have an inside joke going as they finish the remains of yout...";
	end the story finally saying "Place-to-Play Stew";
	follow the shutdown rules;

a wordtwisting rule (this is the pre-loose-intro rule):
	if player is not in my new mine ooh, unavailable;
	if lucent row is not in my new mine ooh, unavailable;
	ready;

this is the post-loose-intro rule:
	now sco-loose-intro is true;
	say "A loose intro flutters down from the lucent row. You pick it up. As you do, the lucent row stops glowing and becomes a ledge. A Goal-Edge-Go Ledge, to be precise.";
	now player has loose intro;
	moot lucent row;
	move ledge to My New Mine Ooh;

book room-variant scoring

a wordtwisting rule (this is the pre-den-specs rule):
	if player does not have dense pecs, unavailable;
	if sco-den-specs is true:
		vcal "You don't need two pairs.";
		already-done;
	ready;

this is the post-den-specs rule:
	now sco-den-specs is true;
	say "You lose a bit of strength, strength you didn't really need, and wind up with a pair of glasses that may help you find a secret passage somewhere. You hope.";
	now player has den specs;

a wordtwisting rule (this is the pre-summon-cheese rule):
	if aight is not examined, unavailable;
	if player does not have aight, unavailable;
	if sco-summon-cheese is true:
		vcal "You already got some munchies! No need to be greedy";
		already-done;
	ready;

this is the post-summon-cheese rule:
	now sco-summon-cheese is true;
	say "You're confident you've figured what the munchies are. And you know what? You're right! You have all sorts of cheese now.";
	now player has cheese;

chapter ur branch scoring

a wordtwisting rule (this is the pre-herb-ranch rule):
	if player is not in ur branch, unavailable;
	if sco-herb-ranch is true:
		vcal "You already found the herb ranch! One free sample should be enough.";
		already-done;
	ready;

this is the post-herb-ranch rule:
	now sco-herb-ranch is true;
	say "You find a path to a herb ranch. Of course every stew needs herbs. The farmer there gives you a sample saying 'Some herb, eh?' The phrase sticks with you as conversation continues.[paragraph break]It's a surprisingly enlightening one. What can you do with it?";
	now player has herbs;
	declue-here;

a wordtwisting rule (this is the pre-probe-all rule):
	if pro ball is not touchable, unavailable;
	if sco-probe-all is true:
		vcal "You already probed the pro ball enough to get a feel for hidden exits in your surroundings! More will appear as you need them.";
		already-done;
	ready;

this is the post-probe-all rule:
	now sco-probe-all is true;
	say "You reach out to the pro ball. It seems to sense what you want it for. You take it, then look at it from many different angles. Reflected in it, you see ... well, a meh spot [here-in of my new mine ooh] that could use sprucing up. But how?[paragraph break]Yet much of the pro ball remains cloudy. Perhaps it will reveal what you need, as you need it.";
	say "[line break]It also reveals something near here. You notice some sort of ship. You wave, and its captain, so to speak, waves back. They introduce themselves as the Pun Tweaker. Their ship is the Gauche Hip Go Ship. They immediately start in with some crunching puns.[paragraph break][i][bracket][b]NOTE[r][i]: you don't need to examine the pro ball from here on out for it to open new passages.[close bracket][i][line break]";
	move meh spot to my new mine ooh;
	now player has pro ball;
	move pun tweaker to beach ill;
	move ship to beach ill;
	declue pro ball;
	[some passages you hadn't even considered away from the Ur-Branch. You lose yourself in it for a while, and then, when you look up, you see ]

a wordtwisting rule (this is the pre-summer-bay rule):
	if player does not have herbs, unavailable;
	if sco-summer-bay is true:
		vcal "You already used the herb to expand your mind! It is only good for seasoning now";
		already-done;
	if player is not in ur branch:
		vcp "Perhaps you should use the herb in a more wide-open place. Like the Ur-Branch where you got it.";
		not-yet;
	ready;

this is the post-summer-bay rule:
	now sco-summer-bay is true;
	say "The herb gives off a weird ... well, not quite a smell. But it opens your mind to new passages, passages that might actually lead somewhere, without having to light it or do anything adults who drank a lot told you was very, very dangerous.[paragraph break]Your newly opened mind discerns a safe passage east. Hey, that's a start!";
	reveal Beach Ill to east;
	declue herbs;

a wordtwisting rule (this is the pre-guard-entry rule):
	if player is not in ur branch, unavailable;
	if garden tree is not in ur branch, unavailable;
	if sco-guard-entry is true:
		vcal "You already snuck past the garden tree so you could go [b]IN[r]!";
		already-done;
	ready;

this is the post-guard-entry rule:
	now sco-guard-entry is true;
	say "You look for a way past the tree, and suddenly you have an idea, and once you know what to look for, it's easy. You're less threatening than [the forest team], so it's no problem. The protective magic or whatever is fooled, or maybe it thinks that if you're willing to risk the guard entry, you're not visiting for greedy purposes. Whichever it is, you make it...";
	move player to Pea Stalks;
	declue garden tree;

a wordtwisting rule (this is the pre-blah-copse rule):
	if player is not in ur branch, unavailable;
	if north is branchcant, unavailable;
	if sco-blah-copse is true:
		vcp "You already figured how to evade the black ops! You can just go north if you need to.";
		not-yet;
	ready;

this is the post-blah-copse rule:
	now sco-blah-copse is true;
	say "Aha! That was what you were doing wrong. You just needed to tweak a thing or two as you walked north. This time, you avoid the black-ops site. Once you see the path, well, it's hard to un-see.";
	moot black ops;
	move player to Blah Copse;

book east branch scoring

chapter Beach Ill scoring

a wordtwisting rule (this is the pre-be-chill rule):
	if player is not in Beach Ill, unavailable;
	if sco-be-chill is true:
		vcal "The beach is already chill enough!";
		already-done;
	ready;

this is the post-be-chill rule:
	now sco-be-chill is true;
	move nigh swarm to Beach Ill;
	say "Your general sense of malaise disperses, which makes you more observant. Observant enough to notice a nigh swarm which ... keeps things from being perfect.";
	declue-here;

a wordtwisting rule (this is the pre-pie-crust rule):
	if player is not in Pile Up Isle or pike rust is not in location of player, unavailable;
	if sco-gray-tin is false:
		vcp "You unfortunately have nothing that can contain pie crust, yet.";
		not-yet;
	if sco-pie-crust is true:
		vcal "You already de-rusted the pike!";
		already-done;
	ready;

this is the post-pie-crust rule:
	now sco-pie-crust is true;
	say "Yup! Pie crust! It fits in your tin nicely.";
	now player has pie crust;
	moot pike rust;

a wordtwisting rule (this is the pre-punt-weaker rule):
	if player is not in beach ill, unavailable;
	if sir freddie is not in beach ill and sir freddie is not moot:
		vcp "The pun tweaker says 'Yeah, maybe I have one. But what can you do for me?'";
		not-yet;
	if sco-peace-talks is false:
		vcp "Perhaps if you managed to get rid of Sir Freddie...";
		not-yet;
	if sco-punt-weaker is true:
		vcal "You already got the punt, weaker!";
		already-done;
	ready;

this is the post-punt-weaker rule:
	now sco-punt-weaker is true;
	say "'Ah, yes, that's it. A small gift for a small favor.' The pun tweaker goes to the back of [the ship], and you hear a splash. The pun tweaker reappers, clothes wet, pushing a pretty scrawny punt. 'It won't get very far, but there's something to the east. Oh, and I hope you have a way to steer it, too. Anyway, here you go. My repairs are complete!'";
	move punt weaker to beach ill;
	moot pun tweaker;
	moot ship;
	check-oar-punt;
	reveal Pile Up Isle to east;

to check-oar-punt:
	if player has prime oar and sco-punt-weaker is true:
		now prime oar is scenery;
		now prime oar is in location of player;
		say "You hook the prime oar up to the punt.";

book northwest branch scoring

chapter sore dark scoring

a wordtwisting rule (this is the pre-sword-ark rule):
	if player is not in sore dark, unavailable;
	if sco-sword-ark is true:
		vcal "You don't need another sword! You just want to get out of here.";
		already-done;
	ready;

this is the post-sword-ark rule:
	now sco-sword-ark is true;
	say "It takes a while of stumbling around, but you have confidence the sword ark is there. In said sword ark is contained, shockingly, a sword! And not just any sword, but the TERRA BLADE. However, the blade is still out of reach. It's a pretty tall ark.";
	move sword ark to sore dark;
	move terra blade to sore dark;
	declue-here;

a wordtwisting rule (this is the pre-blast-ring rule):
	if player does not have blah string, unavailable;
	if player is not in sore dark or sword ark is not in sore dark:
		vcal "You can see nothing to blast!";
		not-yet;
	ready;

this is the post-blast-ring rule:
	now sco-blast-ring is true;
	say "You aim the blah string at the sword ark. You feel a pull--yes, this must be when to transform the blah string. And boom! The sword ark shatters, and the Terra Blade falls to the ground.";
	moot blah string;
	moot sword ark;

a wordtwisting rule (this is the pre-terrible-aid rule):
	if player is not in sore dark and player does not have terra blade, unavailable;
	if sco-terrible-aid is true:
		vcal "You probably shouldn't actively diss the Terra Blade, now you're carrying it.";
		already-done;
	if sco-blast-ring is false:
		vcp "Hmm, yes, it doesn't matter if it's terrible while it's unattainable.";
		not-yet;
	ready;

this is the post-terrible-aid rule:
	now sco-terrible-aid is true;
	say "You make the point that the Terra Blade would be a terrible aid for your humble goals, whatever they may be. That proves you are worthy![paragraph break]You hear rumbling. You can't imagine there are any bigger secret here, so it seems like it's time to leave.";
	declue terra blade;
	block-and-back;

book northeast branch scoring

chapter bore dread scoring

a wordtwisting rule (this is the pre-board-red rule):
	if player is not in bore dread, unavailable;
	if sco-board-red is true:
		vcal "You shouldn't need another board!";
		already-done;
	ready;

this is the post-board-red rule:
	now sco-board-red is true;
	say "You turn up a board (red) ... it's narrow and six feet long, made of styrofoam, with CATCH THE WAVES and STAND ON THIS SIDE written on one side. Since it wasn't hard to find, you don't feel excited you found it, but you carry it anyway. Thankfully, nobody in the maul tower gaffles or arrests you for stealing.";
	now player has board red;
	declue-here;

a wordtwisting rule (this is the pre-malt-hour rule):
	if player is not in bore dread, unavailable;
	if booze-score is 0:
		vcp "You would like to call out that there are alcoholic refreshments, but you don't have any.";
		not-yet;
	if booze-score is 1:
		vcp "The [if player has cold rum]cold rum[else]dope ale[end if] isn't quite enough. A rumbling from the maul tower suggests they want variety, if they can't specifically get malt. They have a point, you guess. There are probably quite a few of them there.";
		not-yet;
	if sco-malt-hour is true:
		vcal "You already called out to share refreshments. You need to save some for the final meet-up.";
		already-done;
	ready;

this is the post-malt-hour rule:
	now sco-malt-hour is true;
	say "You call out for malt hour, which maybe isn't quite as good as happy hour. Heck, it might even be a chocolate malt and not malt liquor. But you promise liquid refreshment, which you have in spades, and the guardians come down to share it with you. There are fewer guardians than you thought, so you can save some alcohol for later.[paragraph break]You have a good old talk about ... well, everything. You explain your quest, which they actually find kind of cool. They mention they need to sleep off the booze and are glad to let you through to the east.";
	reveal Joy Nadir to east;

chapter joy nadir scoring

a wordtwisting rule (this is the pre-join-aider rule):
	if player is not in joy nadir, unavailable;
	if player does not have belt rusted:
		vcp "The pro ball crackles, but nothing else happens.";
		not-yet;
	if sco-join-aider is true:
		vcal "You already formed the [orb]!";
		already-done;
	ready;

this is the post-join-aider rule:
	now sco-join-aider is true;
	say "With a rumble, the belt and the pro ball come together to form ... an ORB AND/OR BAND! You feel its power. It is not to be used lightly. Also, the gloom in the general area lifts. It feels less dry, and a dew pit appears.";
	moot belt rusted;
	moot pro ball;
	now player has orb;
	move dew pit to joy nadir;

a wordtwisting rule (this is the pre-dupe-it rule):
	if player is not in joy nadir, unavailable;
	if player does not have egg of a guv:
		vcp "You have nothing that needs duplicating.";
		not-yet;
	if sco-dupe-it is true:
		vcal "You already duplicated the egg of a guv! The dew pit is inactive now.";
		already-done;
	ready;

this is the post-dupe-it rule:
	now sco-dupe-it is true;
	say "You rest the egg of a guv in the dew pit. Nothing happens, then a rumbling. The egg grows and splits into ten identical, larger eggs ... and not only that, a small cardboard container arises from the dew pit. It's labeled TEN DREGS['] TENDER EGGS. You take it. The dew pit grows dull. It's probably served its purpose. In fact, you can't think of anything else to do here. So you return to...";
	now player has tender eggs;
	moot egg of a guv;
	block-and-back;

book north branch scoring

chapter blah copse scoring

a wordtwisting rule (this is the pre-nah-queue rule):
	if forest is not in location of player, unavailable;
	if sco-nah-queue is true:
		vcal "You already brushed back [the forest] that way!";
		already-done;
	ready;

this is the post-nah-queue rule:
	now sco-nah-queue is true;
	say "You reject [the forest]'s jibes consistently and forcefully, not worrying about intellectual rigor. They give up on you. Someone else appears, relieved you got rid of them. He introduces himself as Sir Freddie. He thinks perhaps they are right, and he is not cut out for quests.";
	say "[line break][i][bracket][b]NOTE[r][i]: if you wish, you can refer to him as F or Sir F.[close bracket]";
	moot forest;
	move Sir Freddie to Blah Copse;

a wordtwisting rule (this is the pre-surf-ready rule):
	if Sir Freddie is not in location of player, unavailable;
	if sco-board-red is false:
		vcp "Sir Freddie finds that interesting, but ... he doesn't have the right gear to get started on him, and neither do you, for the moment.";
		not-yet;
	if sco-surf-ready is true:
		vcal "But Sir Freddie has already found a new passion!";
		already-done;
	ready;

this is the post-surf-ready rule:
	now sco-surf-ready is true;
	say "Sir Freddie agrees with you, but he doesn't know how to get started. You have just the thing! Your red board is kind of bulky but not heavy. It'd be nice not to have to carry it around. He waves. 'See you later. Oh, one other thing... I think I heard an orc lurk to the north. Another reason to give up this questing.'";
	moot board red;
	move Sir Freddie to Beach Ill;

a wordtwisting rule (this is the pre-or-clerk rule):
	if player is not in blah copse, unavailable;
	if sco-surf-ready is false, unavailable;
	if sco-or-clerk is true:
		vcal "You already figured nothing awful was lurking to the north";
		already-done;
	ready;

this is the post-or-clerk rule:
	now sco-or-clerk is true;
	say "Haha! Sir Freddie seemed nice enough, but you guess he was scared of someone else who was scared and putting up a front. Sure enough, a clerk Sir Freddie could've beaten up with one hand (if Sir Freddie had the courage to fight, of course) comes out of a bunker with their hands up. They begin to apologize, but you say it's all right.[paragraph break]'You ... you aren't part of the forest team?' Certainly not, you assure them.[paragraph break]'That's a relief! I wish I had more to give you than this blah string I found. I have no clue what to do with it. Oh, and I should never have meddled with what's to the north ... but maybe you can ...'[paragraph break]With that, the clerk runs away, turning briefly to wave at you.";
	now player has blah string;
	reveal Morph Lairs to north;

chapter morph lairs scoring

this is the hom-flairs-flayers rule:
	if the player's command includes "flayers" or the player's command includes "flayer":
		say "You probably don't need flayers as allies, and you really don't need them as enemies.";
	if the player's command includes "flairs" or the player's command includes "flair":
		say "Your clothes fail to become less jazzy. Fortunately, since you're on a quest, there's no restaurant manager around requiring this.";

a wordtwisting rule (this is the pre-more-flares rule):
	if player is not in morph lairs, unavailable;
	ready;

this is the post-more-flares rule:
	now sco-more-flares is true;
	say "You set off the flares, and what do you know? You see another flare coming towards the morph lairs from a distance. Fortunately you already started running to the Ur-Branch. Whereupon you see smoke you follow ... a bit. The path opens up a bit further to the southeast. You have somewhere new to go, yet you're still wondering what became of the morph lairs.";
	now Dome Aching is mapped southeast of Ur Branch;
	now Ur Branch is mapped northwest of Dome Aching;
	wfak;
	declue-here;
	move player to Ur Branch;

chapter morph lairs scoring

a wordtwisting rule (this is the pre-rope-ladder rule):
	if player is not in morph lairs, unavailable;
	ready;

this is the post-rope-ladder rule:
	now sco-rope-ladder is true;
	say "Your eyes finally adjust to all the egregious plaid, and you discover a plain but sturdy rope ladder. You wonder if there is anything else to do here, but shortly you hear an electronic 'HOW?! SCAM!!!!!!' You look up and see a house cam! You run, just in case there's more security ... surely you must be done here, though ...";
	now player has rope ladder;
	block-and-back;

book inside scoring

chapter pea stalks scoring

a wordtwisting rule (this is the pre-peace-talks rule):
	if player is not in pea stalks, unavailable;
	if sco-peace-talks is true:
		vcal "You already fathomed peace talks!";
		already-done;
	ready;

this is the post-peace-talks rule:
	now sco-peace-talks is true;
	say "Getting back to nature and stuff leaves you at peace with yourself. So at peace, you want to spread that peace to others, whether or not they fully deserve it. However, now you're so at peace, you recognize you are disturbing the plants' peace. You retreat to the Ur-Branch.";
	if sco-pea-pod is false:
		now eyes-number of pea stalks is -43;
	else:
		declue-here;
	inside-block-back;

a wordtwisting rule (this is the pre-pea-pod rule):
	if player is not in pea stalks, unavailable;
	if sco-pea-pod is true:
		vcal "There are no other odd pea pods.";
		already-done;
	ready;

this is the post-pea-pod rule:
	now sco-pea-pod is true;
	say "Oh wait! There is something that will add a bit of flavor! Actually, it's a weird giant pea pod!";
	now player has pea pod;
	inside-block-back;

to inside-block-back:
	if sco-pea-pod is true and sco-peace-talks is true:
		say "You feel a moment of zen. You've done what you could here, and you sense you don't fully belong. It's time to move on.";
		block-and-back;
	else if sco-pea-pod is true:
		say "You're pleased you found something out of the way, but perhaps there's something bigger to figure here.";
	else:
		say "In the big picture, it's good to understand peace talks. But maybe there's something fun and obscure to note before moving on.";

chapter A Pile Up Isle scoring

a wordtwisting rule (this is the pre-base-pikes rule):
	if player is not in a pile up isle, unavailable;
	if sco-base-pikes is true:
		vcal "You already cleared a path through the bay spikes!";
		already-done;
	ready;

this is the post-base-pikes rule:
	now sco-base-pikes is true;
	say "Well, someone must've been able to get through the bay spikes to dump stuff on the pile, you reason. And you discover something -- base pikes, one you wouldn't want to use on any person, but then again, these spikes could hurt someone, so that seems okay.[paragraph break]Walking through the path you made, you see a high cup near the top of the pile.";
	move pike rust to Pile Up Isle;
	move base pikes to Pile Up Isle;
	move high cup to Pile Up Isle;
	moot bay spikes;

a wordtwisting rule (this is the pre-hike-up rule):
	if player is not in a pile up isle, unavailable;
	if sco-hike-up is true:
		vcal "There's nothing else to be found from another hike up. You're not getting the high cup, and you don't need it.";
		already-done;
	ready;

this is the post-hike-up rule:
	now sco-hike-up is true;
	say "You decide the direct way of climbing the pile at a steep angle just won't work. But it's a big pile, and as you walk around, you see a slower way, less steep, but less likely to cause you to slip. You get to the top and have a look around. From your vantage point, you see a new path from the Ur-Branch, to the southwest! You also see places well beyond it, to the west and south. Well, that should cover all the directions.[paragraph break]It makes you almost forget about the high cup. Well, it turns out the high cup is glued to other trash. Dang it! You're not sure if you needed it, anyway. It looks a bit too fancy for whatever you want to prepare.";
	declue high cup;

book southeast branch sorting

chapter dome aching scoring

a wordtwisting rule (this is the pre-can-take rule):
	if player is not in dome aching, unavailable;
	if sco-can-take is true:
		vcal "You already affirmed you can take it.";
		already-done;
	ready;

this is the post-can-take rule:
	now sco-can-take is true;
	say "You feel you can take the aching. It takes a bit of time, and you worry a worse aching may replace it ... and, in a way, it does. You wonder what you need to do here now. You see a great inn and an inner nest. Which is worth visiting?";
	move great inn to Dome Aching;
	move inscen to Dome Aching;

a wordtwisting rule (this is the pre-gray-tin rule):
	if player is not in dome aching, unavailable;
	if sco-gray-tin is true:
		vcal "You already got a gray tin from the Great Inn!";
		already-done;
	ready;

this is the post-gray-tin rule:
	now sco-gray-tin is true;
	say "Why not? A tin could hold something handy. The great inn seems to be able to spare a lot, though they mention they can't let you hog too many.";
	now player has tin;
	declue great inn;

a wordtwisting rule (this is the pre-dough-making rule):
	if player is not in dome aching, unavailable;
	if sco-can-take is false:
		vcp "The can't-ache prevents you from doing anything constructive!";
		not-yet;
	if sco-dough-making is true:
		vcal "You already made enough dough!";
		already-done;
	ready;

this is the post-dough-making rule:
	now sco-dough-making is true;
	say "Excellent! Not only do you make the dough, but the great inn offer you somewhere to keep it. You wind up with a dough pail.";
	now player has dough pail;
	declue-here;

a wordtwisting rule (this is the pre-in-earnest rule):
	if player is not in dome aching, unavailable;
	if inscen is not in dome aching, unavailable;
	if sco-in-earnest is true:
		vcal "Don't want to get too earnest, here.";
		already-done;
	ready;

this is the post-in-earnest rule:
	now sco-in-earnest is true;
	say "The inner nest seems to open up a bit more, comfortable you're not just running through a checklist. Well, perhaps you still are. But worst case, you took the time to pretend and make it believable. You can now go [b]IN[r].";
	reveal inner nest to inside;
	declue inscen;

chapter inner nest scoring

a wordtwisting rule (this is the pre-pry-more rule):
	if player is not in inner nest, unavailable;
	if sco-pry-more is true:
		vcal "You already pried and got the prime oar!";
		already-done;
	ready;

this is the post-pry-more rule:
	now sco-pry-more is true;
	say "Surely there must be some way to get the oar, you think. And you pry constructively. After an hour's work, you have an oar, lightweight and powerful.";
	now player has prime oar;
	declue prime oar;

book southwest branch sorting

chapter fort earns four turns scoring

a wordtwisting rule (this is the pre-oh-clever rule):
	if location of player is not fort earns, unavailable;
	if sco-oh-clever is true:
		vcal "You already pulled the oak lever and made it disappear! You just need to do something with [the wick] from here on out.";
		already-done;
	ready;

this is the post-oh-clever rule:
	now sco-oh-clever is true;
	say "You think and think and think. Of course, they wouldn't want any old fool pulling the lever. So there's no obvious way to pull it. You try a hundred different ways, then feel clever on the hundred and first when -- CLICK -- it flips, revealing a compartment behind![paragraph break]The feeling of cleverness lasts only a few seconds, though. You realize how you could've seen it sooner if you'd been paying attention. After fifteen minutes, you feel even less clever for having spent fifteen minutes unconstructively visiting the past.[paragraph break]Then you notice what the lever was hiding: a be-quick beak wick! Nice if you need speed, you're sure.";
	move beak wick to Fort Earns Four Turns;
	moot oak lever;

a wordtwisting rule (this is the pre-fell-trap rule):
	if player is not in fort earns, unavailable;
	if sco-fell-trap is true:
		vcal "You can just X TRAP to [if cellar bin is visited]return[else]see what it might do[end if].";
		already-done;
	ready;

this is the post-fell-trap rule:
	now sco-fell-trap is true;
	say "Oh my! You pull the felt wrap away, and that is one fell looking trap!";
	moot felt wrap;
	move fell trap to Fort Earns;

chapter cell urban scoring

a wordtwisting rule (this is the pre-cellar-bin rule):
	if sco-cellar-bin is true and (player is in fort earns or player is in cellar bin):
		vcal "Whenever you want to revisit the cellar bin, you can just [b]X TRAP[r].";
		already-done;
	if player is not in cell urban, unavailable;
	ready;

this is the post-cellar-bin rule:
	now sco-cellar-bin is true;
	say "You bang on the cell door, claiming you've been sent to the wrong place. To your surprise, two maintenance workers come by and agree. One pushes a button. You are spun around! You fall to the floor, dizzy.[paragraph break]'Okay. Next time, if you fall in the trap, you'll fall somewhere else.' You thank them, you guess, not entirely sure what good it will do.";
	declue-here;
	move player to Cellar Bin;

book west branch sorting

chapter Bowl Ditch scoring

a wordtwisting rule (this is the pre-bold-itch rule):
	if player is not in bowl ditch, unavailable;
	if sco-bold-itch is true:
		vcal "You already shook off your initial embarrassment and fears. Too much itch, and you'll get rash";
		already-done;
	ready;

this is the post-bold-itch rule:
	now sco-bold-itch is true;
	say "You have a think. It's not terrible. You've gotten here. You can get back. You really did trample through whatever was to the east. You walk off the ankle sprain you get from falling down. At the edges of the ditch, you notice:  hey, isn't that a clay mitt? And hey, you can see things clearing out to the north!";
	move clay mitt to Bowl Ditch;
	reveal Sob Acres to north;
	reveal Turbo Tours to west;
	declue-here;

a wordtwisting rule (this is the pre-claim-it rule):
	if player is not in bowl ditch and player does not have clay mitt, unavailable;
	if sco-claim-it is true:
		vcal "You reclaim the clay mitt, which makes you feel powerful and proud, I guess.";
		already-done;
	ready;

this is the post-claim-it rule:
	now sco-claim-it is true;
	say "You wonder if someone would really miss this clay mitt. But then you realize there's nothing stopping you, and they probably didn't just stop by here on vacation and lose it.";
	now player has clay mitt;
	declue clay mitt;

chapter sob acres scoring

a wordtwisting rule (this is the pre-saw-bakers rule):
	if player is not in sob acres, unavailable;
	if sco-saw-bakers is true:
		vcal "You already discovered the deli!";
		already-done;
	ready;

this is the post-saw-bakers rule:
	now sco-saw-bakers is true;
	say "You keep an eye out for other people. Eventually, you see them: bakers, upset they're getting no business. You can probably go INSIDE to their deli.";
	reveal Deli Stern to inside;
	declue-here;

chapter deli stern scoring

a wordtwisting rule (this is the pre-dell-eastern rule):
	if player is not in deli stern, unavailable;
	if sco-dell-eastern is true:
		vcal "You already made things nicer to the east!";
		already-done;
	ready;

this is the post-dell-eastern rule:
	now sco-dell-eastern is true;
	say "The surroundings are a bit more welcoming now. Oh, you can go east as well as out, too.";
	reveal Sob Acres to the east;
	declue-here;

a wordtwisting rule (this is the pre-dope-ale rule):
	if player does not have dough pail, unavailable;
	if player is not in deli stern:
		vcp "Hmm, you could exchange the dough pail for dope ale, but ... nobody here wants dough, and nobody here might have dope ale.";
		not-yet;
	if sco-dell-eastern is false:
		vcp "The [owners] whine that the location here is terrible. It's so dreary outside. So what if they can actually make bread?";
		not-yet;
	if gs-deli-dell-left is false:
		vcp "The [owners] almost look bright for a minute. 'Hey, we could pull off that trade, if ... if ... we got some customers. Come back in a bit, eh?";
		not-yet;
	ready;

this is the post-dope-ale rule:
	now sco-dope-ale is true;
	now player has dope ale;
	moot dough pail;
	say "You make the trade: dough pail for dope ale! The [owners] note they're actually getting business. They bet if you come back a bit later, there'll be even more.";

a wordtwisting rule (this is the pre-beef-ordering rule):
	if player is not in deli stern, unavailable;
	if toon is not in deli stern, unavailable;
	if sco-beef-ordering is true:
		vcal "You already decoded the [toon] and made a good swap for the beef!";
		already-done;
	ready;

this is the post-beef-ordering rule:
	now sco-beef-ordering is true;
	say "Yes, that's what to do. You consider ordering, but what can you pay with? You have nothing too valuable, or so it seems.[paragraph break]But wait! The [owners] spy the Terra Blade on you. You start mumbling surely it can't be used for something so pedestrian ... but perhaps it, or the spirit in it, is sick of saving the world and stuff. 'Beef rended: befriended!' the [owners] exclaim, as they hand you a full variety platter: a [rack]!";
	moot terra blade;
	now player has meat rack;

a wordtwisting rule (this is the pre-wheat-rye rule):
	if player is not in deli stern, unavailable;
	if whee try sign is not in Deli Stern, unavailable;
	if sco-wheat-rye is true:
		vcal "You already got enough free bread!";
		already-done;
	ready;

this is the post-wheat-rye rule:
	now sco-wheat-rye is true;
	say "The [owners] applaud you. 'Yes ... that's just the thing ...' they chop up the wheat and rye with the erstwhile Terra Blade. 'Oh! There's one other thing ... business is booming so much, maybe this will come in handy for you. We don't have any repairs.' They hand you some [pliers].";
	now player has rye bread;
	now player has pliers;

chapter turbo tours scoring

a wordtwisting rule (this is the pre-stark-raft rule):
	if player is not in turbo tours, unavailable;
	if sco-stark-raft is true:
		vcal "You already build the stark raft!";
		already-done;
	ready;

this is the post-stark-raft rule:
	now sco-stark-raft is true;
	say "You let slip that perhaps a stark raft is more in your price range. A voice from behind the star craft agrees. They, in fact, have a particularly plain one which has been not at all good for business. They're willing to give it to you, if you promise not to loiter too much. Thus, they redirect you away to a new area of Turbo Tours, one without the star craft. You feel belittled, but hey, a free raft is a free raft. Your prime oar should work just fine on it. It's worth going back to the beach to get it.";
	raft-tours;
	moot star craft;
	reveal Far Miles Farm Isles to south;

to raft-tours:
	move stark raft to Turbo Tours;
	move prime oar to Turbo Tours;

a wordtwisting rule (this is the pre-tour-boaters rule):
	if player is not in turbo tours, unavailable;
	if sco-tour-boaters is true:
		vcal "You already brought in additional business to Turbo Tours!";
		already-done;
	ready;

this is the post-tour-boaters rule:
	now sco-tour-boaters is true;
	say "You have a business idea! You explain it to the folks at Turbo Tours. They play it down, but of course, after a bit they implement it and it works well and they take credit for it.[paragraph break]That's sort of a bummer, but you find it nice to be around people who are having their own adventures.";
	declue-here;

chapter far miles farm isles scoring

a wordtwisting rule (this is the pre-find-rinks rule):
	if player is not in far miles farm isles, unavailable;
	if sco-find-rinks is true:
		vcal "You already found them! [if sco-bear-respond is false]You don't need to go back[else]You just need to figure what to do to the south[end if].";
		already-done;
	ready;

this is the post-find-rinks rule:
	now sco-find-rinks is true;
	say "It's too warm out for ice rinks, but then, you didn't expect any clues to be obvious. Perhaps you just need to look for reasonably-sized ponds that could freeze pretty quickly in the winter. A bit of wandering, and you find them...";
	reveal Berries Pond to south;
	declue fine drinks;
	move player to Berries Pond;

a wordtwisting rule (this is the pre-barn-open rule):
	if player is not in far miles farm isles, unavailable;
	if sco-bear-respond is false:
		vcp "[farm-sense]You find a barn, open, hidden behind the bar. There are some truly glorious eggs in there, but you have nothing to trade for them yet.";
		not-yet;
	if sco-barn-open is true:
		vcal "You already got an egg from the barn!";
		already-done;
	ready;

this is the post-barn-open rule:
	now sco-barn-open is true;
	say "[farm-sense]You visit the barn. Inside it are some truly glorious eggs! Of course, they are not for free, but you have plenty of extra berries. The farmer thanks you--picking berries to the south is so treacherous--and hands you the very best egg. It's an egg of a GUV[']!";
	declue bar nopin;
	now player has egg of a guv;

to say farm-sense: say "[one of]Of course it makes sense there'd be a barn on farm isles. [or][stopping]"

chapter berries pond scoring

a wordtwisting rule (this is the pre-bear-respond rule):
	if player is not in berries pond, unavailable;
	ready;

this is the post-bear-respond rule:
	now sco-bear-respond is true;
	say "You have no idea whether to call a bear or even if it's a good idea. But you find a honeycomb high up in a tree. It's too high up for you, even when you return with the prime oar, which will maybe be useful if things get violent.";
	say "[line break]You wave the oar at the tree, then wave it, hoping to catch a bear's attention. The bear nods at you as if to say 'Huh, Neatest Honey Test!' You hand it the prime oar, and it swats down the honeycomb, which it takes. But it provides you with a variety of berries in payment. Then it lifts up a paw. You are on its territory. It would not do to stay. You have gotten what you want, and it is time to go. So you do.";
	declue-here;
	raft-tours;
	drop-player-at farm isles;

chapter groan odes scoring

a wordtwisting rule (this is the pre-grow-nodes rule):
	if player is not in groan odes, unavailable;
	if sco-grow-nodes is true:
		vcal "The nodes have already grown and been revealed. How to destroy them?!";
		already-done;
	ready;

this is the post-grow-nodes rule:
	now sco-grow-nodes is true;
	say "The groan odes retract, as nodes grow out, creating a more menacing noise. Ah, so that's what you're up against!";
	move nodes to odes;

a wordtwisting rule (this is the pre-no-date rule):
	if player is not in groan odes, unavailable;
	if nodes are not in groan odes, unavailable;
	if player does not have pliers:
		vcp "Yes ... that feels right, but you have no tool with which to tear apart node eight.";
		not-yet;
	ready;

this is the post-no-date rule:
	now sco-no-date is true;
	say "You realize which node to hack up. You realise what to say. The [pliers] do their work on node eight. 'Imminent destruction?' you scoff. 'NO DATE!'[paragraph break]You hear a FIZZ, then a BOOM ... the explosion knocks you back. Boy! It's a good thing you were still wearing those den specs! Thr pliers fly from your hand and into the specs, which they twist and shatter and blow off your face into a corner. A corner which disappears as the roof starts to collapse. You figure it's a good time to go back to the dell.";
	wfak;
	say "There, people start streaming towards you. They lift you up in the air, which is fun for the first fifteen seconds, but you know they mean well. They prove they mean well by handing you a valuable item.";
	wfak;
	say "'THE HELP-IN-HELL PIN,' one of them booms. You note you haven't come across anything close to hell, so maybe ... well ...";
	say "[line break]You are cut off again. It will help you in anywhere unusually uncomfortable. Well, it sure can't hurt.";
	say "[line break]There's not much else to say. You feel a bit awkward. All you can do is tell them to visit the nice cheery new deli just off to the west! That, they do. Hooray, bringing people together!";
	moot den specs;
	moot pliers;
	now player has hell pin;
	drop-player-at sob acres;
	change down exit of sob acres to nowhere;

book south branch sorting

chapter tube rod scoring

a wordtwisting rule (this is the pre-too-broad rule):
	if player is not in tube rod, unavailable;
	if sco-too-broad is true:
		vcal "You already burst the tube/rod!";
		already-done;
	ready;

this is the post-too-broad rule:
	now sco-too-broad is true;
	say "The tube/rod slowly cracks, then bursts. A passage now leads south. You pause a bit and hope it's not a tube leading to bleeding...";
	reveal Dam Pink to south;
	declue-here;

chapter dam pink scoring

a wordtwisting rule (this is the pre-damp-ink rule):
	if player is not in dam pink, unavailable;
	if sco-gas-pouch is false:
		vcp "But you have nothing that can hold the ink without leaking!";
		not-yet;
	if sco-damp-ink is true:
		vcal "You got enough ink.";
		already-done;
	ready;

this is the post-damp-ink rule:
	now sco-damp-ink is true;
	say "You use the gas pouch to drain out a good dose of damp ink that's dripping from the dam.";
	declue-here;

chapter too dark tude ark scoring

a wordtwisting rule (this is the pre-ho-langour rule):
	if player is not in tude ark, unavailable;
	if sco-too-broad is false:
		vcp "But it doesn't quite work yet, calling for languor ... you haven't done anything down this way.";
		not-yet;
	if sco-ho-langour is true:
		vcal "You already dealt with your anger! If you want more anger to have to deal with, why, you might get your wish, if you're not careful.";
		already-done;
	ready;

this is the post-ho-langour rule:
	now sco-ho-langour is true;
	say "Passive resistance is the way to go! You worry you are just doing nothing by default, and it doesn't really count, but then you remember how you busted up the tube/rod. You feel your blood pressure falling. Things aren't so bad, now.";
	reveal Scribe Room to south;
	declue whole anger;

chapter scribe room scoring

a wordtwisting rule (this is the pre-scry-broom rule):
	if player is not in scribe room, unavailable;
	if sco-damp-ink is false:
		vcp "The scribes won't trade a broom for NOTHING...";
		not-yet;
	if sco-scry-broom is true:
		vcal "You neither want nor need two brooms.";
		already-done;
	ready;

this is the post-scry-broom rule:
	now sco-scry-broom is true;
	say "You realize a broom must be here. You trade the damp ink in the gas pouch for it. The scribes are impressed with the ink ... so much, they show you an artifact few get to see. 'It is our BELL, TRUSTED. Yet it has some hidden purpose we could not find. Perhaps it will help you. And -- oh, yes -- that broom? Do return it when you're done.'";
	now player has broom;
	moot gas pouch;
	declue-here;

a wordtwisting rule (this is the pre-belt-rusted rule):
	if player is not in scribe room, unavailable;
	if bell trusted is not in scribe room, unavailable;
	if sco-belt-rusted is true:
		say "You already made the bell (trusted) look better.";
	ready;

this is the post-belt-rusted rule:
	now sco-belt-rusted is true;
	say "The scribes get together and nod their heads. They agree this must be it. Your request is a wise choice, one not motivated by greed. The rust from the bell flakes off to form a belt. It becomes much shinier. And perhaps ... well, this belt, rusted, was something much more once. Perhaps you are the one to return it to its former questing glory. Such things do not interest scribes.";
	now player has belt rusted;

chapter sage oaks scoring

a wordtwisting rule (this is the pre-say-jokes rule):
	if player is not in sage oaks, unavailable;
	if sco-say-jokes is true:
		vcal "Don't push it. The sage oaks might find such foolish risks stupid and change their views of you.";
		already-done;
	ready;

this is the post-say-jokes rule:
	now sco-say-jokes is true;
	say "'Eh, jokes age oaks,' they mutter at first. But they get into it more. They warn you of the trouble you'll get in if you keep telling corny jokes. It doesn't show you're smart. But then you explain you carefully crafted said jokes to peeve them. You've had experience all game with wordplay, too.[paragraph break]They're pretty impressed with your presentation. You feel a magic surge--you can pass to the south now.";
	reveal dust which does twitch to south;
	declue-here;
	declue sageoakscen;

a wordtwisting rule (this is the pre-gas-pouch rule):
	if player is not in sage oaks and player does not have gas pouch, unavailable;
	if sco-gas-pouch is true:
		vcal "You don't need two gas pouches.";
		already-done;
	ready;

this is the post-gas-pouch rule:
	now sco-gas-pouch is true;
	say "The sage oaks chuckle. And you chuckle a bit, too. Turnabout is fair play! They release the gas from the pouch all at once -- of course, not in your direction. 'It can hold liquid, too,' they say. 'But one more thing. Do you know where we got this from?'[paragraph break]You shake your head.[paragraph break]'The Grove Ouch-Grow-Vouch.'[paragraph break]Well, you had to figure they had one or two left.[paragraph break]'You are completely free to go south now. Whether or not it will be productive right now, we will not say,' they intone.";

chapter dust which does twitch scoring

a wordtwisting rule (this is the pre-pro-sweeping rule):
	if player is not in dust which, unavailable;
	if sco-scry-broom is false:
		vcp "You have nothing that could sweep!";
		not-yet;
	if sco-pro-sweeping is true:
		vcal "It's clean enough here.";
		already-done;
	ready;

this is the post-pro-sweeping rule:
	now sco-pro-sweeping is true;
	say "The dust gets clearer. You see you are in a library. You also notice a coal drum off to the side. Maybe it was the source of some of the dust.";
	moot prose weeping;
	move coal drum to dust which;

a wordtwisting rule (this is the pre-cold-rum rule):
	if player is not in dust which, unavailable;
	if coal drum is not in dust which, unavailable;
	if sco-cold-rum is true:
		vcal "You already found what you could in the coal drum!";
		already-done;
	ready;

this is the post-cold-rum rule:
	now sco-cold-rum is true;
	say "It's a pretty big coal drum. You rummage around, and sure enough ... you find some cold rum. Way too much to drink on your own.";
	now player has cold rum;
	moot coal drum;
	now eyes-number of dust which is 36;
	now eyes-rule of dust which is pre-tea-leaves rule;

a wordtwisting rule (this is the pre-tea-leaves rule):
	if player is not in dust which, unavailable;
	if sco-rope-ladder is false:
		vcp "You suspect you might find tea leaves on, or in, the teal eaves above, but you have no way to climb up.";
		not-yet;
	if sco-tea-leaves is true:
		vcal "You already got tea leaves.";
		already-done;
	ready;

this is the post-tea-leaves rule:
	now sco-tea-leaves is true;
	say "Using your rope ladder, you climb on the roof and down into a spare attic compartment. People watch in disbelief as you pull out many different tea leaves.";
	now player has tea leaves;
	declue-here;

book up branch scoring

chapter Throne Ow Throw Now scoring

a wordtwisting rule (this is the pre-use-it rule):
	if player is not in throne, unavailable;
	if sco-dupe-it is false:
		vcp "It would be useful to have an item of power, but alas, you do not, at the moment.";
		not-yet;
	if sco-use-it is true:
		vcal "The [orb] crumbled away when you used it.";
		already-done;
	ready;

this is the post-use-it rule:
	now sco-use-it is true;
	say "Defying the throne, you hold the [ORB] high in the air. It crackles. Energy shoots to the throne, from which emits a loud 'NO TERROR?! NOTE: ERROR!!!!!' The orb flies from your hand and towards the throne and explodes. You also feel the [pin] ripped from you ... it clunks off somewhere forgotten, maybe to help someone who gets in a more serious pickle than you do.";
	wfak;
	say "Where the throne once sat, there's now something glistening. 'You have freed the life roots,' booms a melodramatic voice.";
	move life roots to Throne;
	moot orb;
	moot hell pin;

a wordtwisting rule (this is the pre-lie-fruits rule):
	if player is not in throne, unavailable;
	if life roots are not in throne, unavailable;
	ready;

this is the post-lie-fruits rule:
	now sco-lie-fruits is true;
	say "You call out the life roots: 'come on, we can't do a heck of a lot with that. Do you really need to be all basso profundo?'[paragraph break]To your surprise, they shrivel up. A voice intones: 'Congratulations. You have seen through us. So many adventurers would start looking for eternal life, or profiting from this.'";
	wfak;
	say "'Actually,' you say, 'I just have this list of stuff I needed for a big meal. I've looked everywhere, but I'm still out a ton of vegetables and fruits. I was kinda hoping there'd be at least some fruits here...'";
	wfak;
	say "'Are you saying the life roots are incapable of creating vegetables, too?'[paragraph break]'Um, no, not at all, just didn't want to ask anyone to do too much, here. I mean it might like harm the soil and render it untillable for generations of farmers to come. Or something. Heck. Now I'm sounding basso profundo.'";
	wfak;
	say "'Your self-awareness is admirable. Yes, we have spare vegetables. They are kind of funny-shaped. Is that a problem? No? Good.'[paragraph break]Your [ugh] feels like it may burst from the additional weight! Good thing you kept those dense pecs when you made the den specs.";
	wfak;
	say "But now, this space needs to heal, free of human interference. Even worthy humans.' You nod and leave. There can't be much left to do, now.";
	now player has assortment;
	block-and-back;

volume loose intro

table of intro jabber
my-jabber
"There's a brief explanation about how [this-game] reuses a lot of the code from [wp], though hopefully the different stories and puzzles give enough variety to keep you interested."

volume directions

table of noways
noway-rm	noway-txt
My New Mine Ooh	"You could explore your mine, but you [if sco-try-quest is false]have no purpose, or errand, or ... there's another word, here[else if sco-be-strong is false]really should get rid of that beast[else]sense the real adventure lies outside[end if]."
Ur Branch	"You can't go [noun][if noun is eventual] yet[end if][if south is branchcan and west is branchcan]. There are no new ways to go[end if]."
Beach Ill	"You can only walk back west[if sco-punt-weaker is true] or take the punt east[end if]."
Pile Up Isle	"You can't see land anywhere except to the west."
Sore Dark	"The only exit from this cavern is southeast."
Bore Dread	"The only exit from this enclosure is southwest."
Blah Copse	"You can only leave the copse to the south[if sco-or-clerk is true] or north[end if]."
Morph Lairs	"Since you can't dare the morph lairs, the only way to leave is back south."
Pea Stalks	"Compass directions befuddle you at the moment. You can only go back out."
Dome Aching	"The only compass direction you can go is back northwest. However, you may also [if sco-in-earnest is true]go[else]find a way[end if] in to the inner nest."
Inner Nest	"No secret passages here. You just need to go back out."
Fort Earns	"You can leave the fort to the northeast [if cellar bin is visited]or X TRAP to fall to the cellar bin[end if]."
Cell Urban	"You'll have to use your wits to leave."
Cellar Bin	"Just go up to leave."
Bowl Ditch	"You can only go [if sco-bold-itch is true]north or [end if]back east."
Sob Acres	"While it's pretty open here, [if sco-saw-bakers is true]the only safe ways are south or [acres-to-deli][else]you see safety only to the south, for now[end if]."
Deli Stern	"Not that way. Out[if sco-dell-eastern is true] or east[end if]."
Tube Rod	"Only back north [if sco-too-broad is false]right now, but maybe there's something beyond the tube/rod[else]or south past the remnants of the tube/rod[end if]."
Sage Oaks	"Only back north [if sco-gas-pouch is true]or south beyond the Sage Oaks[else if sco-say-jokes is true]or south once you figure how to suppress the 'ouch' you feel[else]until you can deal with the Sage Oaks[end if]."
Too Dark Tude Ark	"[if sco-ho-langour is false]It feels hopeless to go any way but back north[else]You feel a bit more Only back north. Well, for now."
Dam Pink	"You can't see any way but back north."
Scribe Room	"You can't see any way but back north."
Dust Which Does Twitch	"You can't see any way but back north."
Turbo Tours	"You can only go back east to the Bowl/Ditch[if sco-stark-raft is true and sco-bear-respond is false]or south via the raft[end if]."
Farm Isles	"You can only go back north to [Turbo Tours][if sco-find-rinks is true and sco-bear-respond is false] or south[end if]."
Berries Pond	"You can't see any way but back north."
Joy Nadir	"The only way out is back west."
Groan Odes	"The only safe way is back outside."
Throne Ow Throw Now	"You can only go back down here."

to say acres-to-deli: say "[if sco-dell-eastern is true]west/[end if]in"

Us Too Tables ends here.

---- DOCUMENTATION ----
