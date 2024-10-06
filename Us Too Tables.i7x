Version 1/241005 of Us Too Tables by Andrew Schultz begins here.

"This lays out the major tables for Us Too for easy indexing and searching, as well as any rules related to the tables."

volume the main table

table of main oronyms
w1 (text)	w2 (text)	posthom (text)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"nice"	"warm"	--	--	false	true	true	false	mine ooh	pre-nice-warm rule	post-nice-warm rule	--	--
"be"	"strong"	--	--	false	true	true	false	mine ooh	pre-be-strong rule	post-be-strong rule	--	--
"a"	"stew"	--	--	false	true	true	false	mine ooh	pre-a-stew rule	post-a-stew rule	--	"You can make [b]A STEW[r] [once-now of pre-a-stew rule] you have all the ingredients you need."
"herb"	"ranch"	--	--	false	true	true	false	ur branch	pre-herb-ranch rule	post-herb-ranch rule	--	--

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
	say "Hooray! You figured what to do! You get a point!";

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
	say "Well, that does it! You make the stew, and you win.";
	end the story saying "Me-Ill Meal!";	

chapter ur branch scoring

a wordtwisting rule (this is the pre-herb-ranch rule):
	if player is not in ur branch, unavailable;
	if sco-herb-ranch is true:
		vcal "You already found the herb ranch! One free sample should be enough.";
		already-done;
	ready;

this is the post-herb-ranch rule:
	now sco-herb-ranch is true;
	say "You find a path to a herb ranch. Of course every stew needs herbs. The farmer there gives you a sample saying 'Some herb, eh?' The phrase sticks with you.";
	now player has some herb eh;

volume directions

table of noways
noway-rm	noway-txt
My New Mine Ooh	"Fill this in later."

Us Too Tables ends here.

---- DOCUMENTATION ----
