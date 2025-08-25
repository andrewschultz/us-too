Version 1/250810 of Us Too Mistakes by Andrew Schultz begins here.

"This lays out <<understand X as a mistake>> syntax for Us Too or, in the case of the PPRR series, the equivalent with tables full of regexes/topics to peruse."

volume non-puzzle-specific mistakes

understand "say [text]" and "say" as a mistake ("You don't need to prefix any important two-word command with [b]SAY[r]. Just say the two words.") when player is not in sage oaks and sco-say-jokes is false.

understand "say [text]" and "say" as a mistake ("You found the only important command to start with [b]SAY[r].") when sco-say-jokes is true and player is not in sage oaks.

volume weird parser stuff

volume puzzle-specific mistakes

book stuff that needs the parser

[note: this could *potentially* be put in another table we read through after the main oronyms. But there's only one example, so I keep it here for now.]

after reading a command:
	if forest team is touchable:
		if the player's command includes "steam":
			say "You need to get less steamed up. And you need to kill [the team]'s head of steam.";
			reject the player's command;

book forest team

understand "fora steam" as a mistake ("No, [the team] doesn't need a big stage with steam to spread their banter.") when forest team is touchable.

understand "fora" and "fora [text]" as a mistake ("No, [the team] doesn't need fora to talk more.") when forest team is touchable.

book clay mitt

understand "claim it" as a mistake ("You wonder if you should reclaim the mitt, but then, you think it might start to reek. Lame.") when player has clay mitt. [this is so the mitt doesn't intersect with two other "IT" puzzles]

book deli

understand "before during" as a mistake ("Yes, this interpretation seems right[toon-1][toon-2].") when beef-ready.

understand "before" and "before [text]" as a mistake ("[toon-half][toon-1].") when beef-ready.

understand "during" and "[text] during" as a mistake ("[toon-half][toon-2].") when beef-ready.

to say toon-half: say "Yes, that feels like one part of what's on [the toon] you need to change"

to say toon-1:
	say "[first-toon-clue]";
	now gs-toon-guess-1 is true;

to say toon-2:
	say "[first-toon-clue]";
	now gs-toon-guess-2 is true;

to say first-toon-clue:
	if gs-toon-guess-2 is false and gs-toon-guess-1 is false:
		say ". The [owners] probably wouldn't object to you talking your way through what the words should be. Also, this information will be in [b]THINK[r] until you figure exactly what to do";

to decide whether beef-ready:
	if toon is touchable and sco-beef-ordering is false, yes;
	no;

book the throne

understand "sit" and "sit [text]" as a mistake ("You were smart enough to get this far. I'm gonna go out on a limb and say you're smart enough not to heed a demanding, evil voice asking you to do the equivalent of touching a live wire, and you're just poking around for fun.")

Us Too Mistakes ends here.

---- DOCUMENTATION ----
