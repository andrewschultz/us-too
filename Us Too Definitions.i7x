Version 1/241005 of Us Too Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume core code relies on this

[every room must have a region, because Spoonerism Core tallies scores by region. But Us Too does not.]

intro is a region.

r-south is a region.

universal is a region.

to decide which region is mrlp: decide on map region of location of player.

book game specific (re)definitions

definition: a rule (called ru) is thinknoteblocking:
	no;

to say eye-loc-notes: if eyes are in mine, say ". The eye is [if player is in mine]here[else]back[end if] in the mine"

to game-specific-cleanup:
	if core-score > 40 and dense pecs are off-stage:
		say "[line break]Boy! All this carrying and dropping items and using your oar to get through the water has been good for your physical conditioning. You've grown some dense pecs.";
		now player has dense pecs;
	if gs-den-seen is false and player is in sob acres and player has dense pecs:
		reveal-den;

to decide whether at-last-point:
	if core-score is core-max - 1, yes;
	no;

to give-partial-later-encouragement:
	if the player's command includes "a" and not at-last-point:
		say "Not much happens. [one of]Unfortunately, I got flummoxed a bit with this one: 'a' is part of a puzzle solution, but on the other hand, the generic response for one word right wreaks havoc with cluing other puzzles. TLDR: one puzzle down the road includes the word 'a.'[or]That thing with the word 'a,' again.[stopping]";
	else:
		say "Not much happens, but you feel like that might help, at least halfway, some time later. Much later, or just a little, you can't tell."

definition: a thing (called th) is eyeable:
	if th is not touchable, no;
	if ur branch is visited:
		if th is Trike west, no;
		if th is amusing or th is er jot, no;
		if th is war pawn, no;
		if th is eyes, no;
		if th is cheese or th is loose intro, no;
	yes;

volume types

a stewitem is a kind of thing. a stewitem has text called invtext. a stewitem can be alcoholic, eatworthy, ingredient, or uneatable. a stewitem is usually eatworthy.

a stewitem can be necessary or unnecessary. a stewitem is usually necessary.

a stewitem can be listed-yet. a stewitem is usually not listed-yet.

to decide which number is nds: decide on number of discovered necessary stewitems;

definition: a stewitem (called st) is discovered:
	if st is mess kit:
		if sco-mess-pot is true, yes;
	if st is carried, yes;
	no;

a startprop is a kind of thing.

initial appearance of a startprop is usually "A [item described] juts out here. [if the item described is unexamined]Looks like it's not empty[else]You see [the list of hintthings in mine ooh] on it[end if].". description of a startprop is usually "You see [the list of hintthings in mine ooh] on it.".

After choosing notable locale objects when player is in mine ooh:
	if lucent row is in mine ooh, set the locale priority of lucent row to 2;
	if ledge is in mine ooh, set the locale priority of ledge to 2;

a startthing is a kind of thing. description of a startthing is usually "You see [the list of hintthings in mine ooh] on [the item described].".

volume rotroom and ordroom

a rotroom is a kind of room. a rotroom has a rotroom called nextroom.

an ordroom is a kind of rotroom. an ordroom has a number called rmord. rmord of an ordroom is usually 0. an ordroom has text called roomdirs.

an ordroom has a rule called south-useful-rule.

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
		say "[line break]There's also a note that [b]R[r] cycles/rotates between [tube rod], [tude ark] and Sage Oaks, and [b]RR[r] does the reverse, ";
		if number of visited rotrooms is 6:
			say "and what's more, it notes [b]R[r] also cycles/rotates between [dam pink], [scribe room] and [dust which], with [b]RR[r] doing the reverse, ";
		say "with no penalty for forgetting the rotation order.";

to say which-south of (orm - an ordroom):
	repeat with X running from 1 to rmord of orm:
		say "S";

check going south in ur branch when extra-turns > 0 and number of visited ordrooms < 3:
	let rm be entry extra-turns in ordrooms-in-order;
	let is-seen be whether or not rm is visited;
	move player to rm;
	if is-seen is false:
		say "[line break]You realize you're somewhere new, and you look at the pro ball. A new passage lights up inside it, [one of]but the area's still mostly dim[or]but there's still some dimness nearby[or]making the whole area lit[stopping]. Looks like you've navigated things well and found everything south of Ur-Branch! Well, each initial passage.";
	if extra-turns > 0:
		say "[line break]You spend time pacing around[if rm is visited] the new place[else], wondering how to get somewhere else[end if]. So much time, your burst of speed vanishes.";
		now extra-turns is 0;
	the rule succeeds;

book potentially type-based definitions

definition: a thing (called th) is ughlistable:
	unless th is carried, no;
	if th is ugh, no;
	if th is aight, no;
	if th is er jot, no;
	if th is dense pecs, no;
	if th is a stewitem, no;
	if th is a hintthing, no;
	yes;

volume directions

a direction can be branchdone. a direction is usually not branchdone.

definition: a direction (called di) is worthwhile:
	if the room di of location of player is nowhere, no;
	if player is in ur branch:
		if di is branchdone, no;
		if di is down:
			if sco-probe-all is true and meh spot is not moot, yes;
			if at-last-point, yes;
			no; [most of the time we don't need to go down, but these are the special cases where something new has happened]
	if player is in bore dread and sco-malt-hour is false and di is east, no;
	if player is in beach ill and sco-hike-up is true and di is east, no;
	if player is in blah copse and di is north and sco-rope-ladder is true, no;
	if player is in dome aching and sco-pry-more is true and di is inside, no;
	if player is in turbo tours and sco-barn-open is true and di is south, no;
	if player is in far miles farm isles and sco-bear-respond is true and di is south, no;
	if player is in sob acres:
		if di is west, no; [west is worthwhile, but since west = inside it will create faux ambiguity ]
		if sco-no-date is true and di is down, no;
		if gs-deli-party is true and di is inside, no;
	if player is in bowl ditch:
		if di is west and sco-barn-open is true and sco-tour-boaters is true, no;
		if di is north and gs-deli-party is true and sco-no-date is true, no;
	yes;

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

before printing the name of a direction (called di) while pri-bold-dirs is true:
	say "[b]";

after printing the name of inside while pri-inside-tree is true:
	say "[r] behind the garden tree";

after printing the name of a direction (called di) while pri-bold-dirs is true:
	say "[r]";

after printing the name of a direction (called di) while pri-branch-detail is true:
	if di is north and sco-blah-copse is false, say " to some black ops";
	if di is south:
		if number of visited ordrooms is 1:
			say " to [random visited ordroom]";
		else:
			say " to [number of visited ordrooms in words] different locations";
	if the room di of location of player is visited, say " to [the room di of location of player]";
	continue the action;

a direction has text called donetext. donetext of a direction is "You're done to [the item described]. I should detail this better, but for now, the upshot is: you don't need to go back [the item described]."

donetext of inside is "You got peace talks and an extra vegetable from behind the garden tree.".
donetext of north is "You looted the Morph Lairs well enough.".
donetext of northwest is "You can't imagine anything is off northwest other than the Terra Blade.".
donetext of northeast is "Between getting lots of eggs, the [orb] and, oh yeah, that board (red,) you think you've made out well enough to the northeast.".
donetext of west is "You fixed up the deli AND destroyed the nodes. Well done! There's no need to go back.".
donetext of south is "You found all three southish passages and everything useful in them, so there's no reason to go back. Nice work!".
donetext of up is "You destroyed the evil throne and got what you needed from the life roots.".
donetext of east is "You got everything you needed to the east, which helped you discover passages to the south, west and southwest.".
donetext of southwest is "You are done with the southwest and using the beak to speed through to new places.".
donetext of southeast is "You looted the dome and the inner nest nicely.".

chapter directions from/to Ur-Branch

to block-and-back:
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

to decide which number is options-found:
	decide on (boolval of gs-know-blah-cough) + (boolval of gs-know-think-well);

to decide which number is garden-score:
	decide on (boolval of sco-pea-pod) + (boolval of sco-peace-talks);

to decide which number is dome-in-score:
	decide on (boolval of sco-gray-tin) + (boolval of sco-in-earnest);

to decide which number is booze-score:
	decide on (boolval of sco-cold-rum) + (boolval of sco-dope-ale);

to decide which number is booze-listed-yet-score:
	decide on (boolval of whether or not cold rum is listed-yet) + (boolval of whether or not dope ale is listed-yet);

to decide which number is toon-guess-score:
	decide on (boolval of gs-toon-guess-1) + (boolval of gs-toon-guess-2);

to decide which number is blocked-bonus:
	let temp be (boolval of sco-pea-pod) + (boolval of sco-tour-boaters);
	decide on 2 - temp;

to decide whether nonpawn-left:
	if (cur-bonus + 1 - (boolval of sco-nope-on)) is max-bonus, no;
	yes;

book composite booleans

to decide whether need-meh:
	if meh spot is off-stage and sco-probe-all is true, yes;
	no;

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
	if player is in mine ooh and sco-try-quest is false:
		say "You're not quite sure how to get started and get focused. There are almost too many possibilities. The help left for you in the mine -- well, that may help make sense of things later. Perhaps examining yourself with [b]X ME[r] or recapping what you know with [b]THINK[r] should come first.";
		the rule succeeds;
	say "[generic-parser-error].";
	the rule succeeds;

rule for printing a parser error when the latest parser error is nothing to do error and player has pro ball:
	if the player's command includes "all":
		say "You already used ALL as you needed, for the pro ball. You don't need to act directly on multiple items.";
		the rule succeeds;
	continue the action;

Us Too Definitions ends here.

---- DOCUMENTATION ----
