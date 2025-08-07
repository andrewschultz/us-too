Version 1/241005 of Us Too Tables by Andrew Schultz begins here.

"This lays out the major tables for Us Too for easy indexing and searching, as well as any rules related to the tables."

[REMINDER: mrc.py to create new point scoring action]

volume the main table

[note: # of rows != total points since we start with HOW SO]

table of main oronyms
w1 (text)	w2 (text)	first-hom (text)	second-hom	hom-txt-rule (rule)	first-exact	first-close	second-exact	second-close	part-explain	think-cue	okflip	core	idid	everfail	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"my"	"quest"	--	--	--	false	false	false	false	"how to get started and what to do"	false	true	true	false	false	mine ooh	pre-my-quest rule	post-my-quest rule	--	--
"be"	"strong"	--	--	--	false	false	false	false	"getting rid of the beast"	false	true	true	false	false	mine ooh	pre-be-strong rule	post-be-strong rule	--	--
"summon"	"cheese"	--	--	--	false	false	false	false	"figuring what some munchies are"	false	true	true	false	false	--	pre-summon-cheese rule	post-summon-cheese rule	--	--
"nice"	"warm"	--	--	--	false	false	false	false	"making the swarm less aggressive"	false	true	true	false	false	mine ooh	pre-nice-warm rule	post-nice-warm rule	--	--
"mess"	"pot"	--	--	--	false	false	false	false	"making the spot into something more useful"	false	true	true	false	false	mine ooh	pre-mess-pot rule	post-mess-pot rule	--	--
"meh"	"skit"	--	--	--	false	false	false	false	"having harmless, useless fun with the mess kit"	false	true	false	false	false	mine ooh	pre-meh-skit rule	post-meh-skit rule	--	--
"a"	"stew"	--	--	--	false	false	false	false	"achieving the game's objective"	false	true	true	false	false	mine ooh	pre-a-stew rule	post-a-stew rule	--	"You can make [b]A STEW[r] [once-now of pre-a-stew rule] you have all the ingredients you need."
"herb"	"ranch"	--	--	--	false	false	false	false	"finding the first place to visit from the Ur-Branch"	false	true	true	false	false	ur branch	pre-herb-ranch rule	post-herb-ranch rule	--	--
"summer"	"bay"	--	--	--	false	false	false	false	"letting the herb reveal a new location"	false	true	true	false	false	ur branch	pre-summer-bay rule	post-summer-bay rule	--	--
"blah"	"copse"	--	--	--	false	false	false	false	"clue for guessing one word right"	false	true	true	false	false	ur branch	pre-blah-copse rule	post-blah-copse rule	--	--
"be"	"chill"	--	--	--	false	false	false	false	"dealing with the beach, ill"	false	true	true	false	false	Beach Ill	pre-be-chill rule	post-be-chill rule	--	--
"pie"	"crust"	"pi"	--	--	false	false	false	false	"finding what's under the pike rust"	false	true	true	false	false	Beach Ill	pre-pie-crust rule	post-pie-crust rule	--	--
"punt"	"weaker"	--	--	--	false	false	false	false	"trading with the pun tweaker"	false	true	true	false	false	Beach Ill	pre-punt-weaker rule	post-punt-weaker rule	--	--
"sword"	"ark"	"soared"	--	--	false	false	false	false	"finding something in the Sore Dark"	false	true	true	false	false	sore dark	pre-sword-ark rule	post-sword-ark rule	--	--
"board"	"red"	"bored"	--	--	false	false	false	false	"finding something in the Bore Dread"	false	true	true	false	false	bore dread	pre-board-red rule	post-board-red rule	--	--
"nah"	"queue"	--	--	--	false	false	false	false	"repelling the [team]"	false	true	true	false	false	blah copse	pre-nah-queue rule	post-nah-queue rule	--	--
"surf"	"ready"	--	--	--	false	false	false	false	"giving Sir Freddie a new direction"	false	true	true	false	false	blah copse	pre-surf-ready rule	post-surf-ready rule	--	--
"probe"	"all"	--	--	--	false	false	false	false	"finding a purpose for the pro ball"	false	true	true	false	false	ur branch	pre-probe-all rule	post-probe-all rule	--	--
"scry"	"bread"	--	"bred"	--	false	false	false	false	"getting something from the scribe (red)"	false	true	true	false	false	pile up isle	vc-scry-bread rule	vr-scry-bread rule	--	--
"peace"	"talks"	--	--	--	false	false	false	false	"clue for guessing one word right"	false	true	true	false	false	pea stalks	pre-peace-talks rule	post-peace-talks rule	--	--
"can"	"take"	--	--	--	false	false	false	false	"clue for guessing one word right"	false	true	true	false	false	dome aching	pre-can-take rule	post-can-take rule	--	--
"claim"	"it"	--	--	--	false	false	false	false	"clue for guessing one word right"	false	true	true	false	false	pile up isle	pre-claim-it rule	post-claim-it rule	--	--
"peep"	"odd"	--	--	--	false	false	false	false	"finding something unusual within the Pea Stalks"	false	true	false	false	false	pea stalks	pre-peep-odd rule	post-peep-odd rule	--	--

chapter scribe red scoring

a wordtwisting rule (this is the vc-scry-bread rule):
	if scribe red is not touchable, unavailable;
	ready;

this is the vr-scry-bread rule:
	now sco-scry-bread is true;
	say "Now you have the bread!";
	now player has bread;

chapter mine ooh scoring

a wordtwisting rule (this is the pre-my-quest rule):
	if sco-my-quest is true:
		vcal "You already have an idea of your quest!";
		already-done;
	ready;

this is the post-my-quest rule:
	now sco-my-quest is true;
	say "Yes, yes. That's what really matters. Your quest.[paragraph break]You doze off, and when you awake, you find ... well, a beast, wrong, blocking your way.";
	move beast wrong to mine ooh;
	now player has aight;

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
	say "You manage to stand up to the beast a bit. It could beat you, sure, but you're not worth the effort. It trudges off, no longer blocking you from leaving. It has easier prey.";
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

a wordtwisting rule (this is the pre-a-stew rule):
	if player is not in mine ooh:
		vcp "You need to be back in your mine for this.";
		not-yet;
	if sco-a-stew is false and debug-win is false:
		vcp "You don't have all the stew ingredients you need!";
		not-yet;
	ready;

this is the post-a-stew rule:
	now sco-a-stew is true;
	say "Well, that does it! You make the stew, and you win. As you make the stew, you reflect it is not MY stew, which would be kind of a me-ill meal, but A stew.[paragraph break]You make other random seeming stews over there years, but none quite has the flavor of this one.";
	end the story finally saying "A swell ace! WELL!";
	follow the shutdown rules;

chapter recipe scoring

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

a wordtwisting rule (this is the pre-probe-all rule):
	if pro ball is not touchable, unavailable;
	if sco-probe-all is true:
		vcal "You already probed the pro ball enough to get a feel for hidden exits in your surroundings! More will appear as you need them.";
		already-done;
	ready;

this is the post-probe-all rule:
	now sco-probe-all is true;
	say "You reach out to the pro ball. It seems to sense what you want it for. You take it, then look at it from many different angles. Reflected in it, you see ... well, a meh spot [here-in of my new mine ooh] that could use sprucing up. But how?[paragraph break]Yet much of the pro ball remains cloudy. Perhaps it will reveal what you need, as you need it.[paragraph break][i][bracket][b]NOTE[r][i]: you don't need to examine the pro ball from here on out for it to open new passages.[close bracket][i][line break]";
	move meh spot to my new mine ooh;
	now player has pro ball;
	continue the action; [some passages you hadn't even considered away from the Ur-Branch. You lose yourself in it for a while, and then, when you look up, you see ]
	say "You poke at the pro ball, which opens your consciousness further to the oddness of diagonally directional pathways, and how they might not be strictly necessary most of the time, but in the Ur-Branch, well, they are a bit more appropriate.[paragraph break]On return, you notice new branches: northeast and northwest!";

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

chapter ur branch scoring

a wordtwisting rule (this is the pre-blah-copse rule):
	if player is not in ur branch, unavailable;
	if north is branchcant, unavailable;
	if sco-blah-copse is true:
		vcp "You already figured how to evade the black ops! You can just go north if you need to.";
		not-yet;
	ready;

this is the post-blah-copse rule:
	now sco-blah-copse is true;
	say "Aha! That was what you were doing wrong. You just needed to tweak a thing or two. This time, you avoid the black-ops site.";
	move player to Blah Copse;

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

a wordtwisting rule (this is the pre-pie-crust rule):
	if player is not in Beach Ill, unavailable;
	if pike is not touchable, unavailable;
	if sco-pie-crust is true:
		vcal "You already de-rusted the pike!";
		already-done;
	ready;

this is the post-pie-crust rule:
	now sco-pie-crust is true;
	say "Yup! Pie crust!";
	now player has pie crust;

a wordtwisting rule (this is the pre-punt-weaker rule):
	if player is not in beach ill, unavailable;
	if sco-punt-weaker is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-punt-weaker is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the post-punt-weaker rule:
	now sco-punt-weaker is true;
	say "Hooray! You figured what to do! You get a point!";

chapter sore dark scoring

a wordtwisting rule (this is the pre-sword-ark rule):
	if sco-sword-ark is true:
		vcal "You don't need another sword! You just want to get out of here.";
		already-done;
	ready;

this is the post-sword-ark rule:
	now sco-sword-ark is true;
	say "It takes a while of feeling around, but your blah string does the job. You find a sword ark. You worry you may not be worthy of the sword you find. It is found in an earthen recess. Perhaps you are not. But you are not killed when you take it. So that's something![paragraph break]Looking on its hilt, you see you are now in possession of the TERRA BLADE.";
	now player has Terra Blade;
	block-and-back;

chapter bore dread scoring

a wordtwisting rule (this is the pre-board-red rule):
	if player is not in bore dread, unavailable;
	if sco-board-red is true:
		vcal "You shouldn't need another board!";
		already-done;
	ready;

this is the post-board-red rule:
	now sco-board-red is true;
	say "You turn up a board (red) ... it's narrow and six feet long, made of styrofoam, with CATCH THE WAVES and STAND ON THIS SIDE written on one side. Since it wasn't hard to find, you don't feel excited you found it, but you carry it anyway.";
	now player has board red;
	block-and-back;

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
		vcp "Sir Freddie finds that interesting, but ... he doesn't have any way to get started, and neither do you.";
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
	block-and-back;

a wordtwisting rule (this is the pre-peep-odd rule):
	if player is not in pea stalks, unavailable;
	if sco-peep-odd is true:
		vcal "There are no other odd pea pods.";
		already-done;
	ready;

this is the post-peep-odd rule:
	now sco-peep-odd is true;
	say "Oh wait! There is something that will add a bit of flavor!";
	now player has pea pod;

chapter pile up isle scoring

a wordtwisting rule (this is the pre-claim-it rule):
	if player is not in pile up isle, unavailable;
	if sco-claim-it is true:
		vcal "The clay mitt is already good and claimed.";
		already-done;
	ready;

this is the post-claim-it rule:
	now sco-claim-it is true;
	say "You wonder if someone would really miss this clay mitt. But then you realize there's nothing stopping you, and they probably didn't just stop by here on vacation and lose it.";
	now player has clay mitt;

chapter dome aching scoring

a wordtwisting rule (this is the pre-can-take rule):
	if player is not in dome aching, unavailable;
	if sco-can-take is true:
		vcal "You already affirmed you can take it.";
		already-done;
	ready;

this is the post-can-take rule:
	now sco-can-take is true;
	say "You feel you can take the aching. It takes a bit of time, and you worry a worse aching may replace it ... and, in a way, it does. You wonder what you need to do here now.";

volume directions

table of noways
noway-rm	noway-txt
My New Mine Ooh	"You could explore your mine, but you [if sco-my-quest is false]have no purpose, or errand, or ... there's another word, here[else if sco-be-strong is false]really should get rid of that beast[else]sense the real adventure lies outside[end if]."

Us Too Tables ends here.

---- DOCUMENTATION ----
