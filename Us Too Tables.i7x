Version 1/241005 of Us Too Tables by Andrew Schultz begins here.

"This lays out the major tables for Us Too for easy indexing and searching, as well as any rules related to the tables."

volume the main table

table of main oronyms
w1 (text)	w2 (text)	posthom (text)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"my"	"quest"	--	--	false	true	true	false	mine ooh	pre-my-quest rule	post-my-quest rule	--	--
"nice"	"warm"	--	--	false	true	true	false	mine ooh	pre-nice-warm rule	post-nice-warm rule	--	--
"be"	"strong"	--	--	false	true	true	false	mine ooh	pre-be-strong rule	post-be-strong rule	--	--
"mess"	"pot"	--	--	false	true	true	false	mine ooh	pre-mess-pot rule	post-mess-pot rule	--	--
"a"	"stew"	--	--	false	true	true	false	mine ooh	pre-a-stew rule	post-a-stew rule	--	"You can make [b]A STEW[r] [once-now of pre-a-stew rule] you have all the ingredients you need."
"herb"	"ranch"	--	--	false	true	true	false	ur branch	pre-herb-ranch rule	post-herb-ranch rule	--	--
"pie"	"crust"	--	--	false	true	true	false	summer bay	pre-pie-crust rule	post-pie-crust rule	--	--
"summer"	"bay"	--	--	false	true	true	false	ur branch	pre-summer-bay rule	post-summer-bay rule	--	--
"sword"	"ark"	--	--	false	true	true	false	sore dark	pre-sword-ark rule	post-sword-ark rule	--	--
"board"	"red"	--	--	false	true	true	false	bore dread	pre-board-red rule	post-board-red rule	--	--
"probe"	"all"	--	--	false	true	true	false	ur branch	pre-probe-all rule	post-probe-all rule	--	--

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
	say "The nigh swarm grows less volatile and, yes, more nice, warm. It rises in the air, then buzzes off to somewhere to maybe be nice, cool, too. Perhaps there is a nigh school![paragraph break]Behin the nigh swarm is a pro ball.";
	moot nigh swarm;
	move pro ball to summer bay;

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

chapter mine ooh scoring

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

a wordtwisting rule (this is the pre-a-stew rule):
	if player is not in mine ooh:
		vcp "You need to be back in your mine for this.";
		not-yet;
	if sco-a-stew is false:
		vcp "You don't have all the ingredients of stew you need!";
		not-yet;
	ready;

this is the post-a-stew rule:
	now sco-a-stew is true;
	say "Well, that does it! You make the stew, and you win. As you make the stew, you reflect it is not MY stew, which would be kind of a me-ill meal, but A stew.[paragraph break]You make other random seeming stews over there years, but none quite has the flavor of this one.";
	end the story saying "On ice! Aw, nice!";

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
	now player has some herb eh;
	reveal bore dread to northeast;
	reveal sore dark to northwest;

a wordtwisting rule (this is the pre-probe-all rule):
	if pro ball is not touchable, unavailable;
	if sco-probe-all is true:
		vcal "You already probed the pro ball enough to get a feel for hidden exits your surroundings! More may appear as you need them.";
		already-done;
	ready;

this is the post-probe-all rule:
	now sco-probe-all is true;
	say "You look at the pro ball from many different angles. Reflected in it, you see ... well, a meh spot [here-in of my new mine ooh] that could use sprucing up. But how?";
	move meh spot to my new mine ooh;
	continue the action; [some passages you hadn't even considered away from the Ur-Branch. You lose yourself in it for a while, and then, when you look up, you see ]
	say "You poke at the pro ball, which opens your consciousness further to the oddness of diagonally directional pathways, and how they might not be strictly necessary most of the time, but in the Ur-Branch, well, they are a bit more appropriate.[paragraph break]On return, you notice new branches: northeast and northwest!";

a wordtwisting rule (this is the pre-summer-bay rule):
	if player does not have herb, unavailable;
	if sco-summer-bay is true:
		vcal "You already used the herb!";
		already-done;
	if player is not in ur branch:
		vcp "Nothing happens with the herb. Maybe be somewhere else.";
		not-yet;
	ready;

this is the post-summer-bay rule:
	now sco-summer-bay is true;
	say "The herb gives off a weird ... well, not quite a smell. But it opens your mind to new passages. And you find one east.";
	reveal summer bay to east;

chapter summer bay scoring

a wordtwisting rule (this is the pre-pie-crust rule):
	if player is not in summer bay, unavailable;
	if pike is not touchable, unavailable;
	if sco-pie-crust is true:
		vcal "You already de-rusted the pike!";
		already-done;
	ready;

this is the post-pie-crust rule:
	now sco-pie-crust is true;
	say "Yup! Pie crust!";
	now player has pie crust;

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

volume directions

table of noways
noway-rm	noway-txt
My New Mine Ooh	"You could explore your mine, but you want your friends near first[if sco-be-strong is false]. Besides, you need to get that beast out of the way, to see your surroundings[end if]."

Us Too Tables ends here.

---- DOCUMENTATION ----
