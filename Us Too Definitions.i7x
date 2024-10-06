Version 1/241005 of Us Too Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume core code relies on this

universal is a region.

definition: a rule (called ru) is thinknoteblocking:
	no;

to game-specific-cleanup: do nothing;

to decide which region is mrlp: decide on map region of location of player.

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
