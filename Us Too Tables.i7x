Version 1/241005 of Us Too Tables by Andrew Schultz begins here.

"This lays out the major tables for Us Too for easy indexing and searching, as well as any rules related to the tables."

volume the main table

table of main oronyms
w1 (text)	w2 (text)	posthom (text)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"nice"	"warm"	--	--	false	true	true	false	mine ooh	pre-nice-warm rule	post-nice-warm rule	--	--
"be"	"strong"	--	--	false	true	true	false	mine ooh	pre-be-strong rule	post-be-strong rule	--	--
"a"	"stew"	--	--	false	true	true	false	mine ooh	pre-a-stew rule	post-a-stew rule	--	"You can make [b]A STEW[r] [once-now of pre-a-stew rule] you have all the ingredients you need."
"herb"	"ranch"	--	--	false	true	true	false	ur branch	pre-herb-ranch rule	post-herb-ranch rule	--	--
"pie"	"crust"	--	--	false	true	true	false	summer bay	pre-pie-crust rule	post-pie-crust rule	--	--
"summer"	"bay"	--	--	false	true	true	false	ur branch	pre-summer-bay rule	post-summer-bay rule	--	--
"sword"	"ark"	--	--	false	true	true	false	sore dark	pre-sword-ark rule	post-sword-ark rule	--	--
"board"	"red"	--	--	false	true	true	false	bore dread	pre-board-red rule	post-board-red rule	--	--

chapter mine ooh scoring

a wordtwisting rule (this is the pre-nice-warm rule):
	if player is not in mine ooh, unavailable;
	if sco-nice-warm is true:
		vcal "You already made the swarm nice and warm!";
		already-done;
	ready;

this is the post-nice-warm rule:
	now sco-nice-warm is true;
	say "The swarm feels less intimidating now.";

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
	say "You find a path to a herb ranch. Of course every stew needs herbs. The farmer there gives you a sample saying 'Some herb, eh?' The phrase sticks with you as conversation continues.[paragraph break]It's a surprisingly enlightening one, opening your consciousness further to the oddness of diagonally directional pathways, and how they might not be strictly necessary most of the time, but in the Ur-Branch, well, they are a bit more appropriate.[paragraph brea]On return, you notice new branches: northeast and northwest!";
	now player has some herb eh;
	reveal bore dread to northeast;
	reveal sore dark to northwest;

section ur branch scoring

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

section summer bay scoring

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
	if sco-sword-ark is false:
		vcp "You still need to do something!";
		not-yet;
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
	if sco-board-red is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-board-red is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the post-board-red rule:
	now sco-board-red is true;
	say "You turn up a board (red) ... it's narrow and six feet long, made of styrofoam, with CATCH THE WAVES and STAND ON THIS SIDE written on one side. Since it wasn't hard to find, you don't feel excited you found it, but you carry it anyway.";
	now player has board red;

volume directions

table of noways
noway-rm	noway-txt
My New Mine Ooh	"Fill this in later."

Us Too Tables ends here.

---- DOCUMENTATION ----
