Version 1/241005 of Us Too Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume core code relies on this

intro is a region.

r-south is a region.

universal is a region.

definition: a rule (called ru) is thinknoteblocking:
	no;

to game-specific-cleanup:
	if core-score > 40 and dense pecs are off-stage:
		say "[line break]Boy! All this carrying and dropping items and using your oar to get through the water has been good for your physical conditioning. You've grown some dense pecs.";
		now player has dense pecs;
	if gs-den-seen is false and player is in sob acres and player has dense pecs:
		reveal-den;

definition: a thing (called th) is eyeable:
	if th is not touchable, no;
	if ur branch is visited:
		if th is Trike west, no;
		if th is amusing or th is er jot, no;
		if th is war pawn, no;
		if th is eyes, no;
		if th is cheese or th is loose intro, no;
	yes;

to decide which region is mrlp: decide on map region of location of player.

volume types

a stewitem is a kind of thing. a stewitem has text called invtext. a stewitem can be alcoholic, eatworthy, ingredient or uneatable. a stewitem is usually eatworthy.

a stewitem can be listed-yet. a stewitem is usually not listed-yet.

to decide which number is nds: decide on number of discovered stewitems;

definition: a stewitem (called st) is discovered:
	if st is mess kit:
		if sco-mess-pot is true, yes;
	if st is carried, yes;
	no;

a startprop is a kind of thing. a startprop is usually scenery.

a startthing is a kind of thing.

volume rotroom and ordroom

a rotroom is a kind of room. a rotroom has a rotroom called nextroom.

an ordroom is a kind of rotroom. an ordroom has a number called rmord. rmord of an ordroom is usually 0. an ordroom has text called roomdirs.

to decide whether ordrooms-seen:
	if number of visited ordrooms is 3, yes;
	no;

ordrooms-in-order is a list of rooms variable. ordrooms-in-order is { tude ark, sage oaks, tube rod }.

definition: a number (called q) is claimable:
	if q < 1 or q > number of ordrooms, no;
	repeat with R running through ordrooms:
		if rmord of R is q, no;
	yes;

when play begins:
	repeat with rm running through ordrooms:
		change north exit of rm to Ur Branch;

to decide whether south-sorted:
	if number of unvisited ordrooms is 0, yes;
	no;

to list-which-room:
	repeat with ORM running through ordrooms-in-order:
		if orm is visited:
			say "[ORM]: [which-south of ORM]";
		else:
			say "<a blank row ... odd>";
		say "[line break]";
	if ordrooms-seen:
		now gs-noted-r is true;
		say "[line break]There's also a note that R cycles/rotates between [tube rod], [tude ark] and Sage Oaks, and RR does the reverse.";
		if number of visited rotrooms is 6:
			say "And what's more, it notes R also cycles/rotates between [dam pink], [scribe room] and [dust which], with RR doing the reverse.";

to say which-south of (orm - an ordroom):
	if south-sorted:
		repeat with X running from 1 to rmord of orm:
			say "S";
		say " (command)";
	else:
		say "[rmord of orm] south, [roomdirs of orm]";

check going south in ur branch when extra-turns > 0 and number of visited ordrooms < 3:
	let rm be entry extra-turns in ordrooms-in-order;
	move player to rm;
	if rm is unvisited:
		say "You take a look around your new surroundings. Hey, somewhere new!";
		say "[line break][one of]You ran past a lot to get here. Maybe you missed something you can find later.[or]You wonder if there was a bit more to look for.[or]You think you've discovered everywhere.[stopping]";
	else:
		say "You've been here before. It's nice not to get lost, but you wonder where else there is.";
	if extra-turns > 0:
		say "[line break]You spent so much time pacing around said somewhere new, your burst of speed vanishes.";
		now extra-turns is 0;
	the rule succeeds;

volume directions

a direction can be branchdone. a direction is usually not branchdone.

definition: a direction (called di) is eventual:
	if di is outside, no;
	if di is branchcant, yes;
	no;

definition: a direction (called di) is branchcant:
	if di is branchdone, no;
	if the room di of location of player is nowhere, yes;
	no;

definition: a direction (called di) is branchcan:
	if di is branchdone, no;
	if di is down, no;
	if the room di of ur branch is nowhere, no;
	yes;

definition: a direction (called di) is branchseen:
	unless di is branchcan, no;
	if the room di from branch is nowhere, no;
	if the room di from branch is visited, yes;
	no;

definition: a direction (called di) is branchunseen:
	unless di is branchcan, no;
	if the room di from branch is nowhere, yes;
	if the room di from branch is visited, no;
	yes;

after printing the name of a direction (called di) while pri-branch-reject is true:
	if di is north and sco-blah-copse is false, say " to some black ops";
	if the room di of location of player is visited, say " to [the room di of location of player]";
	continue the action;

a direction has text called donetext. donetext of a direction is "You're done to [the item described]. I should detail this better, but for now, the upshot is: you don't need to go back [the item described]."

donetext of inside is "You got peace talks and an extra vegetable from behind the garden tree.".
donetext of north is "You looted the Morph Lairs well enough.".
donetext of northwest is "You can't imagine anything is in the dark other than the Terra Blade.".
donetext of northeast is "Between getting lots of eggs, the [orb] and, oh yeah, that board (red,) you think you've made out well enough to the northeast.".
donetext of west is "You fixed up the deli AND destroyed the nodes. Well done! There's no need to go back.".
donetext of south is "You found all three southish passages and what was in them. Nice going.".
donetext of up is "You destroyed the evil throne and got what you needed from the life roots.".
donetext of east is "You got everything you needed to the east, which helped you discover passages to the south, west and southwest.".
donetext of southwest is "You are done with the southwest and using the beak to speed through to new places.".
donetext of southeast is "You looted the dome and the inner nest nicely.".

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

to decide which number is toon-guess-score:
	decide on (boolval of gs-toon-guess-1) + (boolval of gs-toon-guess-2);

book composite booleans

to decide whether pile-done:
	if sco-base-pikes is true and sco-hike-up is true and sco-pie-crust is true, yes;
	no;

volume cheat item stuff

to say eye-with:
	if eye-the-room is true:
		say "with the general area, though specific things may provide a clue";
	else if noun is a sentient:
		say "to [if noun is hostile]neutralize[else if noun is impressable]impress[else if noun is agreeable]aid[else]get something from[end if] [the noun] directly";
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

rule for printing a parser error when the latest parser error is the not a verb I recognise error or the latest parser error is the didn't understand error (this is the catch bad verbs rule):
	say "[generic-parser-error].";
	the rule succeeds;

rule for printing a parser error when the latest parser error is nothing to do error and player has pro ball:
	if the player's command includes "all":
		say "You already used ALL as you needed, for the pro ball. You don't need to act directly on multiple items.";
		the rule succeeds;
	continue the action;

Us Too Definitions ends here.

---- DOCUMENTATION ----
