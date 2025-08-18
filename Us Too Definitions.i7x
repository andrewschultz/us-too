Version 1/241005 of Us Too Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume core code relies on this

intro is a region.

universal is a region.

definition: a rule (called ru) is thinknoteblocking:
	no;

to game-specific-cleanup:
	if core-score > 40 and den specs are off-stage:
		say "Boy! All this carrying and dropping items and using your oar to get through the water has been good for your physical conditioning. You've grown some dense pecs.";
		now player has dense pecs;
	if gs-den-seen is false and player is in sob acres and player has dense pecs:
		reveal-den;
	if eyeall-test is true:
		follow the eyeall rule;

definition: a thing (called th) is eyeable:
	if th is not touchable, no;
	if ur branch is visited:
		if th is Trike west, no;
		if th is amusing or th is tour ad, no;
		if th is war pawn, no;
		if th is eyes, no;
		if th is cheese or th is loose intro, no;
	yes;

to decide which region is mrlp: decide on map region of location of player.

volume types

a stewitem is a kind of thing. a stewitem has text called invtext. a stewitem can be alcoholic, eatworthy, ingredient or uneatable. a stewitem is usually eatworthy.

a startprop is a kind of thing. a startprop is usually scenery.

a startthing is a kind of thing.

volume ordroom

an ordroom is a kind of room. an ordroom has a number called rmord. rmord of an ordroom is usually 0.

south-to-find is a list of ordrooms variable. south-to-find is { Tube Rod, Too Dark Tude Ark, Sage Oaks }.

south-found is a list of ordrooms variable. south-found is { Tube Rod, Tube Rod, Tube Rod }.

definition: a number (called q) is claimable:
	if q < 1 or q > number of ordrooms, no;
	repeat with R running through ordrooms:
		if rmord of R is q, no;
	yes;

to assign-rmord:
	let rm be entry 1 in south-to-find;
	remove rm from south-to-find;
	now rmord of rm is extra-turns;
	now entry extra-turns of south-found is rm;
	if debug-state is true, say "(DEBUG) [rm] has been assigned rmord [extra-turns].";
	move player to rm;
	if number of entries in south-to-find is 0:
		say "Whew! You've discovered three new entries to the south of the Ur-Branch. You're kind of worried it will be tricky to remember.";
		say "[line break][i][bracket][b]NOTE[r][i]: don't worry. There will be. And you won't have to run back and forth, now you've discovered all of them.[close bracket]";
		move sign ought sigh not to ur branch;
		change south exit of ur branch to entry 1 in south-found;

to list-which-room:
	repeat with ORM running through south-found:
		say "[ORM]: [which-south of ORM][line break]";

to say which-south of (orm - an ordroom):
	repeat with X running from 1 to rmord of orm:
		say "S";

check going north in an ordroom: move player to ur branch instead;

check going south in ur branch when extra-turns > 0:
	repeat with o running through ordrooms:
		if rmord of o is extra-turns:
			move player to o;
			if debug-state is true, say "Already been to [o] ([extra-turns] turns).";
			the rule succeeds;
	assign-rmord;
	say "You take a look around your new surroundings. Hey, somewhere new!";
	if extra-turns > 0, say "[line break]You spend so much time pacing around said somewhere new, your burst of speed vanishes.";
	now extra-turns is 0;
	the rule succeeds;

volume directions

a direction can be branchdone. a direction is usually not branchdone.

definition: a direction (called di) is eventual:
	if di is up or di is outside, no;
	if di is branchcant, yes;
	no;

definition: a direction (called di) is branchcant:
	if di is branchdone, no;
	if the room di of location of player is nowhere, yes;
	no;

definition: a direction (called di) is branchcan:
	if di is branchdone, no;
	if di is down, no;
	if the room di of location of player is nowhere, no;
	yes;

after printing the name of a direction (called di) while pri-branch-reject is true:
	if di is north and sco-blah-copse is false, say " to some black ops";
	if the room di of location of player is visited, say " to [the room di of location of player]";
	continue the action;

a direction has text called donetext. donetext of a direction is "You're done [the item described]. I should detail this better, but for now, the upshot is: you don't need to go back [the item described]."

donetext of inside is "You got peace talks and an extra vegetable from behind the garden tree.".
donetext of north is "You looted the Morph Lairs well enough.".
donetext of northwest is "You can't imagine anything is in the dark other than the Terra Blade.".
donetext of northeast is "Between getting lots of eggs, the [orb] and, oh yeah, that board (red,) you think you've made out well enough to the northeast.".
donetext of west is "You fixed up the deli AND destroyed the nodes. Well done! There's no need to go back.".
donetext of south is "You found all three southish passages and what was in them. Nice going.".
donetext of up is "You got what you needed from the life roots.".
donetext of east is "You got everything you needed to the east, which helped you discover passages to the south, west and southwest.".
donetext of southwest is "You are done with the southwest and using the beak to speed through to new places.".

chapter directions from/to Ur-Branch

to block-and-back:
	say "[line break]It seems there's nothing else to do here. You hope there isn't. So you just go back to the Ur-Branch.";
	let the way be the best route from Ur Branch to location of player;
	now the way is branchdone;
	drop-player-at Ur Branch;

volume composite numbers or booleans

book numbers

to decide which number is first-command-points: [ boolval doesn't quite work here ... it gives 200 or more]
	let temp be 0;
	if the player's command includes "how", increment temp;
	if the player's command includes "so", increment temp;
	decide on temp;

to decide which number is dome-in-score:
	decide on (boolval of sco-gray-tin) + (boolval of sco-in-earnest);

to decide which number is booze-score:
	decide on (boolval of sco-cold-rum) + (boolval of sco-dope-ale);

book composite booleans

to decide whether pile-done:
	if sco-base-pikes is true and sco-hike-up is true and sco-pie-crust is true, yes;
	no;

volume cheat item stuff

to say eye-with:
	if current action is eyering:
		say "with the general area, though specific things may provide a clue";
	else if noun is a sentient:
		say "to [if noun is hostile]neutralize[else if noun is agreeable]aid[else]improve[end if] [the noun]";
	else:
		say "with [the noun]";

volume score and thinking

the score and thinking changes rule is listed instead of the notify score changes rule in the turn sequence rulebook.

this is the score and thinking changes rule:
	let sco-delt be current-score - last-current-score;
	let bonus-delt be cur-bonus - last-cur-bonus;
	if sco-delt is 0 and bonus-delt is 0, continue the action;
	if bonus-delt > 0:
		say "[i][bracket]Your score just went up by [if bonus-delt is 1]a bonus point[else][bonus-delt in words] bonus points[end if]![close bracket][r][line break]";
		now last-cur-bonus is cur-bonus;
		now last-current-score is last-current-score + bonus-delt;
		now sco-delt is sco-delt - bonus-delt;
	if sco-delt > 0:
		if bonus-delt > 0, say "[line break]";
		say "[i][bracket]Your score just went up by [if sco-delt is 1]a point[else][sco-delt in words] points[end if]![close bracket][r][line break]";
		now last-current-score is current-score;

volume to say stubs

to say wp: say "[i]Why Pout[r]"

to say ara: say "Aunt Rickie-Anne"

to say hwhs: say "[i]House Well-How-Swell[r]"

to say hohs: say "[i]House O['] --- --[r]"

volume command parsing

the check forks rule is listed first in the for printing a parser error rulebook.

rule for printing a parser error (this is the check forks rule):
	now partial-row is 0;
	now got-partial-done is false;
	abide by the main-wordtwisting-checker rule for table of main oronyms;
	[if mrlp is valid, abide by the main-wordtwisting-checker rule for spoontable of mrlp;]
	if partial-row > 0:
		if partial-now is true:
			say "A voice in your head encourages you: 'Seem, or see, more!' You've got SOMETHING right, here.";
		else:
			if debug-state is true:
				choose row partial-row in table of main oronyms;
				say "(DEBUG: [check-rule entry] tripped) ";
			say "Not much happens, but you feel like that might help, at least halfway, some time later. Much later, or just a little, you can't tell.";
		the rule succeeds;
	if got-partial-done is true:
		if debug-state is true, say "[partial-row] row ...";
		say "Hmm, no, you already did that, or something like that. You'll know if and when you need to flip between things.";
		the rule succeeds;
	continue the action;

Us Too Definitions ends here.

---- DOCUMENTATION ----
