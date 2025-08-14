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

volume diagnostic

chapter cluing

cluing is an action out of world.

understand the command "clu" as something new.

understand "clu" as cluing.

carry out cluing:
	repeat with X running through things:
		if eyes-number of X is 1 or eyes-number of X is -1, next;
		if X is moot, next;
		if X is war pawn, next;
		say "THING [X] has eyes number [eyes-number of X] which probably should be fixed.";
	repeat with X running through rooms:
		if eyes-number of X is 1 or eyes-number of X is -1, next;
		if X is Reap Rest, next;
		say "ROOM [X] has eyes number [eyes-number of X] which probably should be fixed.";
	the rule succeeds;

chapter eye all

test e with "how so/ea".

eaing is an action out of world.

understand the command "ea" as something new.

understand "ea" as eaing.

carry out eaing:
	if eyeall-test is false, follow the eyeall rule;
	now eyeall-test is true;

this is the eyeall rule:
	if player does not have eyes, now player has eyes;
	say "ROOM:[line break]";
	try eyering;
	say "[line break]THINGS:[line break]";
	repeat with X running through eyeable things:
		say "[X]...";
		try eyeing X;
	the rule succeeds;

definition: a thing (called th) is eyeable:
	if th is not touchable, no;
	if ur branch is visited:
		if th is Trike west, no;
		if th is amusing or th is tour ad, no;
		if th is war pawn, no;
		if th is eyes, no;
		if th is cheese or th is loose intro, no;
	yes;

chapter checking defaults

when play begins:
	let need-things be 0;
	let need-rooms be 0;
	repeat with X running through things:
		if eyes-number of X is not 1 and eyes-number of X is not -1:
			if eyes-rule of X is autoreject rule, say "eyes-rule of [x] is pre-[x] rule.";
	repeat with X running through rooms:
		if x is reap rest, next;
		if eyes-number of X is not 1 and eyes-number of X is not -1:
			if eyes-rule of X is autoreject rule, say "eyes-rule of [x] is pre-[x] rule.";
	repeat with X running through things:
		if eyes-number of X is 0:
			say ". eyes-number of [x] is -1.";
			increment need-things;
	if need-things is 0:
		say "ALL EYES-NUMBER/RULE SETTINGS ARE SET!";
	else:
		say "Fix [need-things] eyes-rule/eyes-number thing setting[if need-things > 1]s[end if].";
	repeat with X running through rooms:
		if X is reap rest, next;
		if eyes-number of X is 0:
			say ". eyes-number of [x] is -1.";
			increment need-rooms;
	if need-rooms is 0:
		say "ALL ROOMS HAVE EYES-NUMBER/EYES-RULE SET!";
	else:
		say "Fix [need-rooms] eyes-rule/eyes-number room setting[if need-rooms > 1]s[end if].";

when play begins:
	repeat with X running through rooms:
		if map region of X is not nothing, next;
		if X is Reap Rest, next;
		say "[X] [map region of X] needs a region.";

when play begins:
	repeat with X running through rooms:
		if X is a noway-rm listed in table of noways, next;
		if X is Reap Rest or X is House Well, next;
		say "[x] could use an entry in table of noways.";

chapter in-game

every turn when extra-turns > 0: say "(DEBUG GAUGE) [extra-turns] extra turns."

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
	let core-left be 0;
	say "Of [1 + number of rows in table of main oronyms]...";
	repeat through table of main oronyms:
		if idid entry is true or core entry is false, next;
		if w2 entry is "stew", next;
		say "[b][w1 entry in upper case] [w2 entry in upper case][r] needs doing: [part-explain entry].";
		increment core-left;
	let bonus-left be 0;
	repeat through table of main oronyms:
		if idid entry is true or core entry is true, next;
		if bonus-left is 0:
			say "BONUS STUFF BELOW[line break]";
		say "    [b][w1 entry in upper case] [w2 entry in upper case][r] needs doing: [part-explain entry].";
		increment bonus-left;
	if core-left is 0, say "Somehow, nothing is left!" instead;
	say "You have [core-left] core point[if core-left > 1]s[end if] to pick off, not including the final one.";
	if bonus-left > 0, say "You also have [bonus-left] bonus point[if bonus-left > 1]s[end if] to pick off, though I haven't checked what is still achievable.";
	the rule succeeds;


Us Too Tests ends here.

---- DOCUMENTATION ----
