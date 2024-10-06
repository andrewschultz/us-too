"Us Too" by Andrew Schultz

volume includes

include Spoonerism and Oronym Core by Andrew Schultz.

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Globals by Andrew Schultz.

volume rooms

book my new mine ooh

My New Mine Ooh is a room in universal. printed name is "My New Mine, Ooh!".

chapter nigh swarm

the nigh swarm is a thing in My New Mine Ooh. [nice warm]

chapter beast wrong

the beast wrong is a thing in My New Mine Ooh. [be strong]

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

