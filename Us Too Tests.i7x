Version 1/241009 of Us Too Tests by Andrew Schultz begins here.

"This lays out basic IDE tests for Us Too, along with general commands that help to gauge game states. The biggest example across games is MISSED, to see how a post-game what-the-player-missed would look."

volume may be sent to main

when play begins:
	now core-max is 1;
	now cur-max-bonus is 0;
	repeat through table of main oronyms:
		if core entry is true:
			increment core-max;
		else:
			increment cur-max-bonus;
	now max-bonus is cur-max-bonus;

volume test commands

test wm with "test w1/test w2/test w3".
test w with "test w1/test w2/test w3".

chapter implemented/placed

test w1 with "how so/my quest/be strong/out/herb ranch/summer bay/e/be chill/nice warm/probe all".

test w2 with "w/in/mess pot/out".

test w3 with "ne/board red/e/punt weaker".

chapter unimplemented/unplaced

test wx with "nw/sword ark/se/ne/board red/sw".

volume diagnostic

chapter qwiing

qwiing is an action out of world.

understand the command "qwi" as something new.

understand "qwi" as qwiing.

carry out qwiing:
	say "Debug-win is [if debug-win is false]now[else]already[end if] on.";
	now debug-win is true;
	the rule succeeds;


chapter lfting

lfting is an action out of world.

understand the command "lft" as something new.

understand "lft" as lfting.

carry out lfting:
	let temp be 0;
	say "Of [1 + number of rows in table of main oronyms]...";
	repeat through table of main oronyms:
		if idid entry is true, next;
		if w2 entry is "stew", next;
		say "[b][w1 entry in upper case] [w2 entry in upper case][r] needs doing: [part-explain entry].";
		increment temp;
	if temp is 0, say "Somehow, nothing is left!" instead;
	say "You have [temp] point[if temp > 1]s[end if] to pick off, not including the final one.";
	the rule succeeds;


Us Too Tests ends here.

---- DOCUMENTATION ----
