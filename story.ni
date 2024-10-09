"Us Too" by Andrew Schultz

volume includes

include Spoonerism and Oronym Core by Andrew Schultz.

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Globals by Andrew Schultz.

volume intro

book tour ad

the player carries the too rad tour ad. printed name of tour ad is "too-rad tour ad.".

description of tour ad is "It describes your new mine in detail. But you need your friends to help explore it.".

volume rooms

book my new mine ooh

My New Mine Ooh is a room in universal. printed name is "My New Mine, Ooh!". description is "You can go outside here. Well, you could, but the way out is blocked.".

check going outside in Mine Ooh when sco-be-strong is false: say "[The beast] blocks your way." instead;

chapter nigh swarm

the nigh swarm is a thing in My New Mine Ooh. [nice warm]

chapter beast wrong

the beast wrong is a thing in My New Mine Ooh. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch."

book ur branch

Ur Branch is a room in universal. It is outside of My New Mine Ooh. printed name is "Ur-Branch". "There are so many branches here! [if sco-herb-ranch is false]You have no idea where to go. You could spend too much time wandering around. You could lose focus[else]You found one path through, and you doubt you need to find another[end if]."

[cur, car, bar, or, saw branches]

chapter herbs

some herb eh is a thing. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "'some herb, eh?'"

book Summer Bay

Summer Bay is a room in universal.

chapter pie crust

the pie crust is a thing. description is "Not very fancy, but it's good enough."

book Sore Dark

Sore Dark is a room in universal. description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, you'll find it[else]The thought of having to stay here after finding something cool leaves you, well, sore[end if]. Good thing you have that blah string to lead your way back out southeast!"

chapter sword

The Terra Blade is a thing.

volume unsorted

chapter pike

the pike is a thing. "[if sco-pie-crust is false]Oh boy, the pike has some rust on it.  Pike rust![else]The pike is shiny and new now you repurposed its rust.[end if]"

section pike rust

the pike rust is a thing. "It's on the pike. Perhaps it is better as something else."

volume regular verbs

check taking: say "You never need to take anything explicitly in [this-game]." instead;

volume meta-verbs

book swearing

the block swearing obscenely rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.

check swearing obscenely: say "I scold, ice-cold![one of][line break][i][bracket]There's no optional section for this, as there was in [b]Why Pout[r][i]. Sorry.[close bracket][r][line break][or][stopping]" instead;

check swearing mildly: try swearing obscenely instead;

volume thinking (can be moved to core?)

check thinking:
	let got-think be false;
	say "You try and think of stuff you tried, but the time wasn't quite right.[paragraph break]";
	repeat through table of main oronyms:
		if think-cue entry is true:
			now got-think is true;
			if idid entry is true:
				say "Oops, I somehow forgot to reset think-cue entry for [w1 entry] [w2 entry]. This is a trivial bug--but please let me know!";
			else:
				if there is a think-advice entry:
					say "[think-advice entry][line break]";
				else:
					say "[first-of-ors of w1 entry] [first-of-ors of w2 entry] is something you tried before it was perfectly ready. I should write in more details later.";
	if got-think is false:
		say "Nothing comes to mind."

