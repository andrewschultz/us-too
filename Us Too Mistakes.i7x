Version 1/250810 of Us Too Mistakes by Andrew Schultz begins here.

"This lays out <<understand X as a mistake>> syntax for Us Too or, in the case of the PPRR series, the equivalent with tables full of regexes/topics to peruse."

volume non-puzzle-specific mistakes

understand "say [text]" and "say" as a mistake ("You don't need to prefix any important two-word command with [b]SAY[r]. Just say the two words.") when player is not in sage oaks and sco-say-jokes is false.

understand "say [text]" and "say" as a mistake ("You found the only important command to start with [b]SAY[r].") when sco-say-jokes is true and player is not in sage oaks.

understand "humor us" and "humorous" as a mistake ("Hi there! Glad you find me funny. Well, I'm going to pretend you do, even if you were just figuring what my pen name 'really' meant.")

volume weird parser stuff

volume puzzle-specific mistakes

book lucent row

understand "loosen trou" and "loosen trow" as a mistake ("Goodness no this isn't that sort of game, but goodness yes that's a really close guess.") when lucent row is touchable.

book forest team

chapter stuff that needs the parser

[note: this could *potentially* be put in another table we read through after the main oronyms. But there's only one example, so I keep it here for now.]

after reading a command:
	if forest team is touchable:
		let temp be 0;
		if the player's command includes "steam", increase temp by 2;
		if the player's command includes "fora", increase temp by 1;
		if temp is 2:
			say "You need to get less steamed up. And you need to kill [the team]'s head of steam. Focus on how they're talking to you, not their name.";
			reject the player's command;
		if temp is 1:
			say "You need to give them less of a forum. Focus on how they're talking to you, not their name.";
			reject the player's command;

chapter stuff that doesn't

understand "fora steam" as a mistake ("No, [the team] doesn't need a big stage with steam to spread their banter.") when forest team is touchable.

book oak lever

understand the command "leave" as something new. [would overwrite the below if in story.ni]

understand "leave her" as a mistake ("No, it's important what the lever's made of. Also, it's an American lever.") when lever is touchable.

book cellar bin

understand "bah cup" as a mistake ("You take time to clean up litter and excoriate litterbugs before going, umm, back up.") when player is in cellar bin.

understand "trapped oar" as a mistake ("You already have a prime oar. Plus, the trap door is useful for something[if sage oaks is visited], as you found out.[else], honest it is![end if]") when player is in cellar bin.

book clay mitt

understand "claim it" as a mistake ("You wonder if you should reclaim the mitt, but then, you think it might start to reek. Lame.") when player has clay mitt. [this is so the mitt doesn't intersect with two other "IT" puzzles]

book deli

understand "before during" as a mistake ("Yes, this interpretation seems right[toon-1][toon-2].") when beef-ready.

understand "before" and "before [text]" and "[text] before" as a mistake ("[toon-half][toon-1].") when beef-ready.

understand "during" and "during [text]" and "[text] during" as a mistake ("[toon-half][toon-2].") when beef-ready.

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

understand "i scream" and "aye scream" as a mistake ("No, there's no ice cream available yet. And you won't need to scream for free samples when it is. You'll get them for free, for all your help.") when player is in deli stern and player has pliers.

book nodes

understand the command "no" as something new. [this would normally be in story.ni but it would overwrite the mistake here]

understand "no" as saying no when number string is not touchable.

understand "no done" as a mistake ("Being able to riff on node one would be nice, but ... it might be TOO easy or obvious, and you can't quite make the pronunciation work, anyway[first-syl-nodes]. Still, that felt at least half right--maybe look a little farther ahead.") when number string is touchable.

to say first-syl-nodes:
	choose row with check-rule of pre-no-date rule in table of main oronyms;
	now first-exact entry is true;

book NE

understand "joiner dear" as a mistake ("Seems right, but no need for cutesy names.") when player is in joy nadir and sco-join-aider is false.

book the throne

understand "sit" and "sit [text]" as a mistake ("You were smart enough to get this far. I'm gonna go out on a limb and say you're smart enough not to heed a demanding, evil voice asking you to do the equivalent of touching a live wire, and you're just poking around for fun.")

Us Too Mistakes ends here.

---- DOCUMENTATION ----
