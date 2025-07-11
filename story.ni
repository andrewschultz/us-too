"Us Too" by Ace Plitt and Ike Whipp

volume includes

include Oronym Core by Andrew Schultz.

include Standard Helping Metaverbs by Andrew Schultz.

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

volume rooms

book my new mine ooh

My New Mine Ooh is a room in universal. printed name is "My New Mine, Ooh!". description is "You can go outside here. [if sco-be-strong is true]You've cleared the way[else if sco-my-quest is true]Well, you could, but the way out is blocked[else]But you're still finding your bearings and purpose[end if].".

check going outside in Mine Ooh:
	if sco-my-quest is false, say "You don't want to go wandering outside after you just got here! You need to catch your bearings. Have something to focus on, instead." instead;
	if sco-be-strong is false, say "[The beast] blocks your way. How wrong of it! You try physically shifting around, but it's unmoved. Maybe adjusting your mental attitude will do the trick." instead;
	if ur branch is unvisited, say "So you begin your quest...";

chapter Mike West (you)

Mike West is a person in Mine Ooh. the player is Mike West. description of Mike West is "You are Mike West."

chapter "item using"

Mike West carries Aight Amusing Item Using. description of Aight is "[aight-stuff]". printed name of Aight is "[']Aight, Amusing Item Using[r]".

check examining aight for the first time:
	say "It's a recipe, actually.";

to say aight-stuff:
	say "--some munchies ([if sco-summon-cheese is false]why isn't it specified?[run paragraph on][else]SUMMONED the CHEESE[end if])[line break]";

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

Mike West carries the too rad tour ad. printed name of tour ad is "too-rad tour ad".

description of tour ad is "It describes your new mine in detail. But you need your friends to help explore it.".

chapter beast wrong

the beast wrong is a sentient. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch."

chapter meh spot

the meh spot is a thing. "The meh spot you saw in the pro ball sits here. It makes your mine feel emptier. Perhaps something belongs there."

chapter mess pot

the mess pot is a thing.

book ur branch

[Note how rooms, uh, branch from Ur Branch:
EAST = Beach Ill
NORTHWEST = Sore Dark
NORTHEAST = Bore Dread
]

Ur Branch is a room in universal. It is outside of My New Mine Ooh. printed name is "Ur-Branch". "There are so many branches here! While you can go back [b]IN[r] to your mine, [if sco-summer-bay is false]you have no idea where else to go. You could spend too much time wandering around. You could lose focus[else if sco-probe-all is false]there's only east, but maybe you can find more concrete places to visit[else]the branches make more sense than they did at first[end if]."

rule for printing the locale description of ur branch:
	now pri-branch-reject is true;
	if number of branchdone directions > 0:
		say "You don't need to go back to [list of branchdone directions].";
	now pri-branch-reject is false;

rule for printing the locale description of ur branch:
	now pri-branch-reject is true;
	if number of branchcan directions > 0:
		say "You could also go [list of branchcan directions].";
	now pri-branch-reject is false;

check going in ur branch (this is the branch blocker rule): if noun is branchdone, say "[donetext of noun]." instead;

[cur, car, bar, or, saw branches]

chapter herbs

some herb eh is a proper-named thing. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "'some herb, eh?'"

book Beach Ill

Beach Ill is a room in universal. "It's nice here. The only way out is back west, since you can't swim the other ways."

chapter nigh swarm

the nigh swarm is a thing in Beach Ill. "A nigh swarm ruins the tranquility of the area. You can't see behind it.". description is "The nigh swarm buzzes aggresively.".

chapter pro ball

the pro ball is a thing. description is "It's not a pro sports ball. More like an orb. But if it were an orb, well , it wouldn't quite work.[paragraph break][if sco-probe-all is false]If you look at it right, you may be able to see a bit more[else]It's weird. The pro ball doesn't seem to reveal anything new when you look at it for any period of time[end if].".

check taking pro ball when sco-probe-all is false: say "It won't budge. At least, not right now." instead;

chapter Sir Frighteous

Sir Frighteous is a sentient. "Sir Frighteous is here. If you wish, you can refer to him as F or Sir F. Not to him, of course, but to me."

understand "f" and "sir f" as Sir Frighteous when Sir Frighteous is touchable.

chapter pie crust

the pie crust is a thing. description is "Not very fancy, but it's good enough."

book Sore Dark

Sore Dark is a room in universal. description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, you'll find it[else]The thought of having to stay here after finding something cool leaves you, well, sore[end if]. Good thing you have that blah string to lead your way back out southeast!"

chapter sword

The Terra Blade is a proper-named thing.

book Bore Dread

Bore Dread is a room in universal. description is "[if sco-board-red is false]My goodness, there seems to be nothing to do here except go back southwest. Or maybe search for some random item[else]Finding the board (red) was almost exciting. But you can't hope for anything else interesting here. Maybe just go back southwest[end if]."

chapter board red

The board red is a thing. printed name is "board (red)". "It's about six feet long and one foot wide, or it would be when unfolded (it snaps into and out of its full length easily. You checked.) It has THIS SIDE UP and CATCH THE WAVES on it."

volume unsorted

chapter munchies

the cheese is a thing.

chapter scribe red

the scribe red is a sentient. printed name is "scribe (red)".

chapter bread

the bread is a thing.

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
	if noun is meh spot, say "It may make you say 'meh' a lot, but it's not going to say anything back." instead;
	if noun is Sir Frighteous, say "'Ho, pawn! Hope on!'" instead;
	if noun is not a sentient, say "You should usually talk to living things, or things that can respond as if they were living." instead;
	say "An awkward silence ensues, mostly brought about by how ... I forgot to code something. Please let me know or file a bug report!" instead;


volume meta-verbs

book swearing

report swearing obscenely for the first time:
	say "[i][bracket]There's no optional section for this, as there was in [b]Why Pout[r][i]. Sorry.[close bracket][r][line break]";
	continue the action;

book xyzzying

carry out xyzzying: say "A hollow voice booms 'Sequel? Seek well? See? QUELL!'[paragraph break]But don't worry, it's just hollow, period." instead;

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
index map with Beach Ill mapped east of ur branch.
