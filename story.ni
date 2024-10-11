"Us Too" by Ike Whipp

volume includes

include Oronym Core by Andrew Schultz.

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Globals by Andrew Schultz.

[ section beta heading (later) ]

section testing headings - not for release

include Us Too Tests by Andrew Schultz.

volume intro

when play begins:
	now left hand status line is "[location of player]";

book you

[ho-pal-hope-al]

Mike West is a person. the player is Mike West. description of Mike West is "You are Mike West."

chapter "item using"

the player carries Aight Amusing Item Using. description of Aight is "It's a recipe, actually.".

to default-x-to-aight:
	say "Note that [b]X[r] will default to [using] in the future.";
	now gs-using-known is true;

report examining Aight Amusing Item Using when gs-using-known is false:
	default-x-to-aight;
	continue the action;

understand "x" and "examine" as examining.

rule for supplying a missing noun when examining:
	if gs-using-known is true:
		now the noun is Aight Amusing;
	else:
		say "(yourself, but [b]I[r] for inventory will reveal an item that [b]X[r] will map to in the future.)";
		now noun is Mike West;
	continue the action;

report taking inventory when gs-using-known is false:
	default-x-to-aight;
	continue the action;

chapter too rad tour ad

the player carries the too rad tour ad. printed name of tour ad is "too-rad tour ad.".

description of tour ad is "It describes your new mine in detail. But you need your friends to help explore it.".

volume rooms

book my new mine ooh

My New Mine Ooh is a room in universal. printed name is "My New Mine, Ooh!". description is "You can go outside here. Well, you could, but the way out is blocked.".

check going outside in Mine Ooh:
	if sco-my-quest is false, say "You don't want to go wandering outside after you just got here! You need to catch your bearings. Have something to focus on, instead." instead;
	if sco-be-strong is false, say "[The beast] blocks your way. How wrong of it! You try physically shifting around, but it's unmoved. Maybe adjusting your mental attitude will do the trick." instead;
	if ur branch is unvisited, say "So you begin your quest...";

chapter beast wrong

the beast wrong is a sentient. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch."

book ur branch

[Note how rooms, uh, branch from Ur Branch:
EAST = summer bay
NORTHWEST = Sore Dark
NORTHEAST = Bore Dread
]

Ur Branch is a room in universal. It is outside of My New Mine Ooh. printed name is "Ur-Branch". "There are so many branches here! [if sco-herb-ranch is false]You have no idea where to go. You could spend too much time wandering around. You could lose focus[else]You found one path through, and you doubt you need to find another[end if]."

after printing the locale description for ur branch:
	if sco-herb-ranch is true:
		say "[one of]You are now aware of passages northeast and northwest. As you understand, this sort of thing usually isn't kosher, but you ARE at an ur-branch[or]Passages lead northwest and northeast[stopping].";
	continue the action;

check going northwest in ur branch when sco-sword-ark is true: say "You can't imagine anything is in the dark other than the Terra Blade." instead;
check going northeast in ur branch when sco-board-red is true: say "You can't imagine anything is in the bore-dread area besides the board (red.)" instead;

[cur, car, bar, or, saw branches]

chapter herbs

some herb eh is a thing. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "'some herb, eh?'"

book Summer Bay

Summer Bay is a room in universal.

chapter nigh swarm

the nigh swarm is a thing in My New Mine Ooh. [nice warm]

chapter Sir Frighteous

Sir Frighteous is a sentient. "Sir Frighteous is here. If you wish, you can refer to him as F or Sir F. Not to him, of course, but to me."

understand "f" and "sir f" as Sir Frighteous when Sir Frighteous is touchable.

chapter pie crust

the pie crust is a thing. description is "Not very fancy, but it's good enough."

book Sore Dark

Sore Dark is a room in universal. description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, you'll find it[else]The thought of having to stay here after finding something cool leaves you, well, sore[end if]. Good thing you have that blah string to lead your way back out southeast!"

chapter sword

The Terra Blade is a thing.

book Bore Dread

Bore Dread is a room in universal. description is "[if sco-board-red is false]My goodness, there seems to be nothing to do here except go back southwest. Or maybe search for some random item[else]Finding the board (red) was almost exciting. But you can't hope for anything else interesting here. Maybe just go back southwest[end if]."

chapter board red

The board red is a thing. printed name is "board (red)". "It's about six feet long and one foot wide, or it would be when unfolded (it snaps into and out of its full length easily. You checked.) It has THIS SIDE UP and CATCH THE WAVES on it."

volume unsorted

chapter pro ball

the pro ball is a thing. "If you look at it right, you may be able to see a bit more.".

chapter pike

the pike is a thing. "Sir Frighteously left his pike behind. [if sco-pie-crust is false]And, oh boy, it has some rust on it.  Pike rust![else]IT is shiny and new now you repurposed its rust.[end if]"

section pike rust

the pike rust is a thing. "It's on the pike. Perhaps it is better as something else."

volume regular verbs

book drop/take

check taking: say "You never need to take anything explicitly in [this-game]." instead;

check dropping: say "You never need to drop anything explicitly in [this-game]. Often, when you're done with something, it will be consumed. Also, there is no inventory limit." instead;

book talk (redefined in Oronym Core)

check ting:
	if noun is Mike West, say "You say, meek, a 'Me? [']Kay!'" instead;
	if noun is Sir Frighteous, say "'Ho, pawn! Hope on!'" instead;
	if noun is not a sentient, say "You should usually talk to living things, or things that can respond as if they were living." instead;
	say "An awkward silence ensues, mostly brought about by how ... I forgot to code something. Please let me know or file a bug report!" instead;


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

volume misc map

index map with ur branch mapped northeast of my new mine ooh.
index map with bore dread mapped northwest of my new mine ooh.
index map with sore dark mapped west of ur branch	.
index map with summer bay mapped east of ur branch.
