Version 1/241005 of Us Too Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume core code relies on this

universal is a region.

definition: a rule (called ru) is thinknoteblocking:
	no;

to game-specific-cleanup: do nothing;

to decide which region is mrlp: decide on map region of location of player.

volume directions

a direction can be branchdone. a direction is usually not branchdone.

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

a direction has text called donetext.

donetext of northwest is "You can't imagine anything is in the dark other than the Terra Blade.".
donetext of northeast is "You can't imagine anything is in the bore-dread area besides the board (red.)".

chapter directions from/to Ur-Branch

to block-and-back:
	say "[line break]It seems there's nothing else to do here. You hope there isn't. So you just go back to the Ur-Branch.";
	let the way be the best route from Ur Branch to location of player;
	now the way is branchdone;
	move player to Ur Branch, without printing a room description;
	print-the-loc;

volume cheat item stuff

to say eye-with:
	if current action is eyering:
		say "with the general area, though specific things may provide a clue";
	else if noun is a sentient:
		say "[if noun is hostile]neutralize[else if noun is agreeable]aid[else]improve[end if] [the noun]";
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
