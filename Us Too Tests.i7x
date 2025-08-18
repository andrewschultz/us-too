Version 1/241009 of Us Too Tests by Andrew Schultz begins here.

"This lays out basic IDE tests for Us Too, along with general commands that help to gauge game states. The biggest example across games is MISSED, to see how a post-game what-the-player-missed would look."

understand "wp" as warponing.

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

chapter sening

sening is an action applying to nothing.

understand the command "sen" as something new.

understand "sen" as sening.

carry out sening:
	repeat with X running through sentients:
		move X to location of player;
		say "[X]...";
		try ting X;
	say "You may want to UNDO this action now.";
	the rule succeeds;

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

test wa with "test w1/test w2/meh skit/loose intro/test w3/pea pod/test w4/test w5/test w61/test w7/test w8/tour boaters/test w9/test w10/test w11".
test w with "test w1/test w2/test w3/test w4/test w5/test w61/test w7/test w8/test w9/test w10/test w11".
test deli with "test w1/test w2/test w3/test w4/test w5/test w61/test w7/test w8/test w9".

chapter eyes

test ey with "how so/x row/get all/eye me/eye/try quest/eye beast/eye"

chapter implemented/placed

test w1 with "how so/try quest/be strong/i/x/summon cheese/u/herb ranch/summer bay/e".

test w2 with "be chill/nice warm/probe all/w/d/mess pot".

test w3 with "u/ne/board red/sw/blah copse/n/nah queue/surf ready/or clerk/n/more flares/n/n/rope ladder/guard entry/in/peace talks".

test w4 with "out/se/can take/grey tin/dough making/in earnest/in/pry more/out/nw/e/punt weaker/e/base pikes/pie crust/hike up/w/w".

test w5 with "nw/sword ark/blast ring/terrible aid/sw/oh clever".

test w6 with "test w6a/test w6b/test w6c".

test w6a with "x beak/ne/s/too broad/n/sw".
test w6b with "x beak/ne/sw/ne/s/ho langour/n/sw".
test w6c with "fell trap/x trap/cellar bin/u/x beak/x trap/u/ne/s/say jokes/gas pouch/n".

test w6u with "gonear isle/base pikes/high cup/gonear branch/l/sw".

test w61 with "test w6u/test w6a/test w6b/test w6c".
test w62 with "test w6u/test w6a/test w6c/test w6b".
test w63 with "test w6u/test w6b/test w6a/test w6c".
test w64 with "test w6u/test w6b/test w6c/test w6a".
test w65 with "test w6u/test w6c/test w6a/test w6b".
test w66 with "test w6u/test w6c/test w6b/test w6a".

test w7 with "sss/s/damp ink/n/n/s/s/scry broom/n/n/ss/s/pro sweeping/cold rum/tea leaves/n/n/s/s/belt rusted/n/n".

test w8 with "sw/x beak/ne/w/bold itch/claim it/w/stark raft/s/find rinks/bear respond/barn open/n"

test w9 with "e/n/saw bakers/in/dell eastern/e/w/dope ale/e/w/beef ordering/e/w/wheat rye/e/den specs/d/grow nodes/no date".

test w10 with "e/s/e/ne/malt hour/e/join aider/dupe it".

test w11 with "u/use it/lie fruits/d/a stew".

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

chapter invtext

when play begins:
	repeat with X running through stewitems:
		if invtext of X is empty and X is not alcoholic, say "Give [x] invtext.";

Us Too Tests ends here.

---- DOCUMENTATION ----
