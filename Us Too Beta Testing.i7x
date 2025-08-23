Version 1/250811 of Us Too Beta Testing by Andrew Schultz begins here.

"This encompasses rare cases where we want commands available to beta testers but not to end players."

volume letting the player jump

chapter jsouthing

jsouthing is an action out of world.

understand the command "jsouth" as something new.

understand "jsouth" as jsouthing.

carry out jsouthing:
	try gjumping 15;
	try gjumping 8;
	try going east;
	try going east;
	say "You've now gotten all core points from the farm isles to the west, the NE/N/NW/SE/E, and inside. You have gotten no bonus points. Things remaining:[line break]";
	say "--[b]WEST:[r] deli and den.";
	say "--[b]SOUTH:[r] untouched yet.";
	say "--[b]NORTHEAST:[r] the maul tower with 2 puzzles behind.";
	say "--[b]UP:[r] the final confrontation, such as it is.";
	the rule succeeds;

chapter gjumping

test-max is a number that varies. test-max is 9.
when play begins: now in-beta is true;

gjumping is an action applying to one number.
gnojumping is an action out of world.

understand the command "j" as something new.

understand "j" as gnojumping.
understand "j [number]" as gjumping.

carry out gnojumping:
	say "JSOUTH starts you by the south, with the farm isles cleared. Individual tests with J:";
	say "[paragraph break]1. mine to beach ill[line break]2. beach to mine (meh spot)[line break]3. clear the north and inside[line break]4. clear the southeast and east and reveal W/SW/S[line break]5. clear the northwest, pull the lever[line break]8. clear the farm isles (6 and 7 are the south)";

carry out gjumping:
	if number understood < 1, say "Positive numbers only." instead;
	let start-num be 1;
	let end-num be remainder after dividing number understood by 10;
	if number understood < 10:
		now end-num is number understood;
		if core-score <= 1:
			now start-num is 1;
			say "Going from 1 to [end-num], since we are at the start.";
		else:
			now start-num is end-num;
			say "Running only test [end-num], since we aren't at the start.";
	else:
		now start-num is number understood / 10;
	if end-num < start-num, say "Start num (tens digit) must be more than end num (ones digit)." instead;
	if end-num > test-max, say "You can't have an end number more than [test-max]." instead;
	repeat with x running from start-num to end-num:
		perform x;
	follow the score and thinking changes rule;
	the rule succeeds;

to perform (x - a number):
	if x is 1:
		if player is in house, move player to mine;
		if player is not in mine:
			say "Test 1 needs to start in mine/house.";
			continue the action;
		try examining lucent row;
		score-point;
		score-point;
		try examining trike west;
		try taking inventory;
		try examining aight;
		try taking eyes;
		try taking war pawn;
		score-point;
		try going up;
		score-point;
		score-point;
		try going east;
	else if x is 2:
		if player is not in beach:
			say "Test 2 needs to start in beach.";
			continue the action;
		score-point;
		score-point;
		score-point;
		try going west;
		try going down;
		score-point;
	else if x is 3:
		if player is not in mine:
			say "Test 3 needs to start in mine.";
			continue the action;
		try going up;
		try going northeast;
		score-point;
		try going southwest;
		try going north;
		score-point;
		score-point;
		score-point;
		score-point;
		try going north;
		score-point;
		try going north;
		try going north;
		score-point;
		score-point;
		try going inside;
		score-point;
	else if x is 4:
		if player is not in pea stalks:
			say "Test 3 needs to start in pea stalks.";
			continue the action;
		try going outside;
		try going southeast;
		score-point;
		score-point;
		score-point;
		score-point;
		try going inside;
		score-point;
		try going outside;
		try going northwest;
		try going east;
		score-point;
		try going east;
		score-point;
		score-point;
		score-point;
		try going west;
		try going west;
	else if x is 5:
		if player is not in branch:
			say "Test 5 needs to start in branch.";
			continue the action;
		try going northwest;
		score-point;
		score-point;
		score-point;
		try going southwest;
		score-point;
		try examining beak;
		say "You should have full speed now. If you want to visit the west area, do so now with NE/W. If you want to clear the west area minus the deli and den, J 8. Sorry about the inconvenience not being able to run things in order. My testing scripts go through the south first, because I finished the maps there first.";
	else if x is 8:
		if player is in fort earns:
			say "Moving player to branch from fort.";
			move player to branch;
		else if player is not in branch:
			say "Test 8 needs to start in branch.";
			continue the action;
		try going southwest;
		say "...";
		try examining beak;
		say "...";
		try going northeast;
		try going west;
		score-point;
		try going west;
		score-point;
		try going south;
		score-point;
		score-point;
		score-point;
		try going north;
	else:
		say "Can only run 1-5 and 8.";

to score-point:
	now verb-dont-print is true;
	repeat through table of main oronyms:
		unless there is a core entry, next;
		if core entry is false, next;
		if idid entry is true, next;
		process the check-rule entry;
		let vr be the outcome of the rulebook;
		if vr is the ready outcome:
			say "[b][first-of-ors of w1 entry]";
			if there is a w2 entry, say " [first-of-ors of w2 entry]";
			say "[r]...";
			if idid entry is false, up-reg;
			now idid entry is true;
			now think-cue entry is false;
			process the run-rule entry;
			game-specific-cleanup;
			now verb-dont-print is false;
			continue the action;
	now verb-dont-print is false;
	say "Failed to score a point.";

Us Too Beta Testing ends here.

---- DOCUMENTATION ----
