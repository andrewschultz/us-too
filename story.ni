"Us Too" by Hugh Morris

[Ace Plitt and Ike Whipp]

volume includes

section general

include Bold Final Question Rows by Andrew Schultz.

include Standard Helping Metaverbs by Andrew Schultz.

section series specific

include Oronym Core by Andrew Schultz.

section game specific

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Globals by Andrew Schultz.

[ section beta heading (later) ]

section testing headings - not for release

include Us Too Tests by Andrew Schultz.

volume intro

when play begins:
	now left hand status line is "[location of player]";
	say "The old mine is yours, now. You were left it in a will by a relative you barely remember. [ara]. She gave you  weird little logic puzzle. 'Tricky,' you mused, and she seemed to smile. But you did not solve it, until the family gathering was over. She had already gotten in her car, and you tried to yell as she drove away. Your family told you not to bug her, which was funny, because everyone seemed to be buttering her up about how rich she was.";
	wfak;
	say "You explained this to your parents, who got really cheesed off you didn't figure it sooner to impress her. That could've been their ticket! Uh, they meant, yours." ;
	wfak;
	say "[ara] held on longer than anyone thought. Your parents went up to get a good word with her, not bringing you, of course, after your flub. But she remained secretive about her will.";
	wfak;
	say "Soon after she died, her relatives received envelopes in the mail. They were each from the same address, but the actual location was a bit different. Your parents and siblings? [hwhs]. You? [hohs].";
	wfak;
	say "You were one of the few to get [hohs]. It seemed like a terrible sign, but as the will was read, the [hwhs] people roared furiously as [ara] mentioned them by name, then thought, no, they nagged too much. So that thing they wanted? To charity! Although ... well, they would get $1000 and travel expenses, if they sarcastically said 'Well, how swell.' And promptly left. Most said it, with passion.";
	wfak;
	say "You were ready to say so, for your own $1000. And it felt weird, being one of three people left, eventually.";
	wfak;
	say "'You impressed her,' one of the lawyers tells you, waiting for the response. 'But you need to impress us, now. No babbling. She was never big on words. Especially big words. Fail, and you only get $10000. You have as long as you need. We have been comped well for our time.'";
	wfak;
	say "You fumble nervously with your envelope. What [i]could[r] they be talking about?";

book you

[ho-pal-hope-al]

volume the player

chapter cheese

some cheese is a singular-named thing. description is "All sorts of cheese, really. Everyone is sure to like one of the types. They're probably sure to hate another, what with some types of cheese being really really polarizing, but that just leaves more for everyone else."

book House Well So Swell

House Well How Swell is a room in intro. printed name is "House Well-How-Swell". "The lawyers look at you expectantly. You fiddle with your envelope. You hope you haven't come all this way for nothing!"

after reading a command when player is in House Well How Swell:
	if debug-state is true:
		if word number 1 in the player's command is "test" or word number 1 in the player's command is "gonear":
			continue the action;
	if the player's command exactly matches the text "how so":
		say "One lawyer stands up and snaps their fingers. 'There you go! I knew you'd get it.";
		increment core-score;
		follow the score and thinking changes rule;
		wfak;
		say "'Let's see, you're ... oh, you're the kid who ran after her with the solution to her little puzzle. She really was impressed, but she was just so sick of being fawned over, she didn't want to get out of her car again. She knew from the way some of her worse relatives bad-mouthed you, you were more than all right. She owned this old mine and even had a small trust fund to pay taxes. Though for you, it's sort of a new mine... and just checking, but you know what to say?'";
		wfak;
		say "You pause. Then 'MY new mine?! Ooh...'[paragraph break]'Bingo! Again!'";
		wfak;
		say "You're a bit worried. You can't just up and leave your job like that. The lawyers assure you the mine is not going anywhere. You build up vacation time from work. You call some trusted friends. 'You're getting shafted,' a few laugh. Enough don't.";
		wfak;
		move player to My New Mine Ooh;
		reject the player's command;
	if number of words in the player's command > 2:
		say "The lawyers yawn. You really are talking too much!";
		reject the player's command;
	if the player's command includes "how" or the player's command includes "so":
		say "The lawyers['] ears seem to perk up for a second.";
		reject the player's command;
	if the number of characters in the player's command > 8:
		say "One of the lawyers casually remarks [ara] was never big on unnecessarily long words.";
		reject the player's command;
	if number of words in the player's command < 2:
		say "One of the lawyers tells you to speak up a little, there.";
		reject the player's command;
	if the player's command includes "lawyers" or the player's command includes "lawyer":
		say "The lawyers sit, stone-faced. You will get no clues from them.";
		reject the player's command;
	if the player's command includes "envelope" or the player's command includes "think" or the player's command includes "hint" or the player's command includes "help":
		say "You glance at your envelope, [one of]once again [or][stopping]worried you might be cheating. But you can't imagine what other clue you have.[paragraph break]The lawyers [one of]still [or][stopping]look nonchalant, fortunately. It says [hohs].";
		reject the player's command;
	if the player's command includes "me" or the player's command includes "myself":
		try examining the player;
		reject the player's command;
	say "The lawyers shake their head slightly, though you sense that's the worst you'll get from them.";
	reject the player's command;

book Mike West (you)

Mike West is a person in House Well How Swell. the player is Mike West. description of Mike West is "You are Mike West[if sco-my-quest is false]. People always said it was a boring name, with nothing exciting about it, but you always hoped they were wrong[end if]."

chapter "item using"

Mike West carries Aight Amusing Item Using. description of Aight is "[aight-stuff]". printed name of Aight is "[']Aight, Amusing Item Using[r]".

check examining aight for the first time:
	say "It's a recipe, actually.";

check examining aight when sco-my-quest is false:
	say "It seems to require you to go look for all manner of weird stuff. You're just not up to fetching stuff at the moment. You don't want to feel like a gofer. You want something more purposeful." instead;

to say aight-stuff:
	say "--some munchies ([if sco-summon-cheese is false]the kind is not specified. What's up with that?[run paragraph on][else]SUMMONED the CHEESE[run paragraph on][end if])[line break]";

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

description of tour ad is "It describes your new mine in detail. It's too big to explore on your own. So you need friends to bring together. And you need a way to bring them together."

volume main rooms

book my new mine ooh

My New Mine Ooh is a room in intro. printed name is "My New Mine, Ooh!". description is "You're down in your new mine, with a passage up back to the great wide world[if sco-be-strong is true]. You've cleared the way--you can't be sure of the direction, as the path twists a bit[else if sco-my-quest is false]. But you're still finding your bearings and purpose. You feel a bit of imposter syndrome, just being given this mine. You don't want to just start wandering. At least you know who you are, and maybe that'll help reframe things[end if].".

check thinking in Mine Ooh when sco-my-quest is false:
	say "You're a bit lost, but you track what you know:";
	say "--you went to [hwhs], called [hohs], and your response 'How so?' impressed the lawyers.";
	say "--the lawyers reacted positively to 'My new mine, ooh!'";
	if gs-taken-inventory is true:
		say "--the [tour ad] and [using] are ... odd, to say the least.";
	say "--your name is Mike West. [ara] said she REALLY liked that name.";
	if gs-taken-inventory is false:
		say "[line break]Maybe you should take [b]INVENTORY[r] with [b]I[r]. That might provide another clue.";
	the rule succeeds;

check going outside in Mine Ooh:
	if sco-my-quest is false, say "You don't want to go wandering outside after you just got here! You need to catch your bearings. Focus on yourself a bit." instead;
	if sco-be-strong is false, say "[The beast] blocks your way. How wrong of it! You try physically shifting around, but it's unmoved. Maybe adjusting your mental attitude will do the trick." instead;
	if ur branch is unvisited, say "So you begin your quest...";

chapter beast wrong

the beast wrong is a sentient. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch."

chapter goal edge go ledge

the goal edge go ledge is a thing. printed name is "Goal-Edge-Go Ledge". "The [ledge] juts out here. [if ledge is unexamined]Maybe something is on it[else]You see [the list of hintthings in mine ooh] on it[end if].". description is "You see [the list of hintthings in mine ooh] on it."

check taking goal edge go ledge:
	if slice eyes are off-stage, say "You can't, but if you [b]EXAMINE[r] the ledge, you may find something on it." instead;
	if number of hintthings in Mine Ooh is 0, say "You already took what was on the ledge." instead;
	say "You can just take [the list of hintthings in Mine Ooh] if you want." instead;

check examining go ledge when go ledge is unexamined:
	say "Carved on the ledge is a message from [ara]. 'These may help. Maybe too much.'[paragraph break]They look weird at first, but after having a thought, you see they are [eyes] and [a war pawn]. You're free to [b]TAKE[r] them, if you want.";
	move slice eyes to mine ooh;
	move war pawn to mine ooh;
	now go ledge is examined;

report taking a hintthing when gs-take-hintthing-note is false:
	say "Done. (By the way, you don't need to explicitly [b]TAKE[r] any game-critical items.)";
	now gs-take-hintthing-note is true;
	continue the action;

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

Ur Branch is a room in universal. It is above My New Mine Ooh. printed name is "Ur-Branch". "There are so many branches here! While you can go back [b]DOWN[r] to your mine, [if sco-summer-bay is false]you have no idea where else to go. You could spend too much time wandering around. You could lose focus[else if sco-probe-all is false]there's only east, but maybe you can find more concrete places to visit[else]the branches make more sense than they did at first[end if]."

rule for printing the locale description of ur branch:
	now pri-branch-reject is true;
	let numcan be number of branchcan directions;
	if numcan > 0, say "The [if numcan > 1]branches you currently see lead[else]only branch you've found so far leads[end if] [list of branchcan directions]. ";
	if number of branchdone directions > 0:
		say "However, you don't need to go back [list of branchdone directions].";
	else:
		say "[line break]";
	now pri-branch-reject is false;
	continue the action;

check going in ur branch (this is the branch blocker rule): if noun is branchdone, say "[donetext of noun]" instead;

after printing the locale description for Ur Branch when sco-hike-up is true and southwest is branchcant:
	say "You track down the southwest passage pretty easily, with the help of your pro ball.";
	reveal Fort Earns Four Turns to southwest;
	continue the action;

after printing the locale description for Ur Branch when sco-nah-queue is true and inside is branchcant:
	say "You hear a scuffle and see the [Forest] running away. They moan something about a garden tree getting in the way. You didn't see one before, but ... you see one, now, and you see their most recent footprints. It doesn't appear particularly aggressive, but it's in the way.";
	reveal Pea Stalks to inside;
	move garden tree to Ur Branch;
	continue the action;

after printing the locale description for Ur Branch when sco-mess-pot is true and northwest is branchcant:
	say "[line break]You hear a rumbling from the pro ball. You see an inverted image of this very Ur-Branch! Not only that, you see passages northwest and northeast, to hidden lairs. You wonder why they only became available now, but then you realize your time cleaning up the meh spot helped you be more organized and see more organization, and perhaps you weren't ready to look at the pro ball right. Among the leaf paths, leaves and whatnot you notice reveal passages to three new areas. Two look relatively safe, but the one north leaves you uneasy.";
	reveal bore dread to northeast;
	reveal Blah Copse to north;
	reveal sore dark to northwest;
	continue the action;

check going west in Ur Branch when sco-hike-up is true:
	if extra-turns is 0:
		say "Your pro ball pulses bright red. You remember, from your trip to see the high cup, there was something beyond there. But it looks awfully dense and spooky ahead. You trust the pro ball when it indicates you shouldn't trust yourself. Well, without proper preparation." instead;
	if Bowl Ditch is unvisited:
		say "It looks scary to the west, but you consult the pro ball, and it's a reassuring shade of green. You feel confident, with your newfound speed, you'll be able to brazen your way through. Of course, there are nasties who nip at you, but you turbo-power your way through long-dead foliage. It's so easy! You're so excited, you forget to slow down when you reach the undergrowth, and you tumble down a slope... you feel a pain in your ankle... and, of course, you no longer feel fast.";
		reveal Bowl Ditch to west;
		move player to Bowl Ditch;
		now extra-turns is 0;
		the rule succeeds;
	else:
		say "The trail you blazed is easy to follow back[if extra-turns > 0], but in following it, you lose your built-up speed[end if].";
		now extra-turns is 0;

check going inside in Ur Branch when sco-guard-entry is false and garden tree is in location of player: say "The garden tree blocks you. It doesn't allow just any old visitors." instead;

chapter herbs

some herbs are a proper-named thing. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "[if sco-summer-bay is true]herbs[else]'some herb, eh?'". understand "herbs/herb eh" and "herb" as some herbs.

chapter garden tree

the garden tree is a thing. "[if sco-guard-entry is true]The garden tree stands here, passively[else]That garden tree the [forest] were whining about stands here[end if]."

book Beach Ill

Beach Ill is a room in universal. printed name is "[if sco-be-chill is false]Beach, Ill[else if sco-probe-all is false]Bless-and-Bleah Sand[else]Dune Ever-Do-Never[end if]". "[if sco-be-chill is false]You have a general sense of malaise here, which isn't usual for these environs, but it's there, and not being able to get rid of it simply is causing more malaise[else]It's nice here. The only way out on foot is back west, since you can't swim the other ways[end if]."

after printing the locale description of Beach Ill when sco-peace-talks is true and Sir Freddie is not moot:
	say "With the lessons learned from the Pea Stalks, you broker a tentative truce between the pun teaker and Sir Freddie. The pun tweaker is quite grateful for this. 'What can I offer you?' 'Oh, nothing much, you say.' The pun tweaker says 'oh of course' a bit too quickly.";
	moot Sir Freddie;
	continue the action;

check going east in Beach Ill when sco-probe-all is true:
	if sco-punt-weaker is false, say "You have no transport. Yet. And the pun tweaker won't take you for free." instead;
	if sco-pry-more is false, say "You have no way to steer the punt. Yet." instead;
	say "[one of]Your punt (weaker) is not useless. Maybe the prime oar helps it be more useful.[or]The punt returns to the isle with no incident.[stopping]";

check going west in Pile Up Isle: say "You have no problem steering the punt back. It seems surprisingly sturdy.";

chapter nigh swarm

the nigh swarm is a thing. "A nigh swarm ruins the tranquility of the area. You can't see behind it.". description is "The nigh swarm buzzes aggresively.".

chapter pro ball

the pro ball is a thing. description is "[if sco-probe-all is false]If you look at it right, you may be able to see a bit more, but you haven't, yet[else]Hmmph. The pro ball doesn't seem to reveal anything new when you look at it for any period of time[end if].".

check examining pro ball for the first time: say "It's not a pro sports ball. More like an orb. But if it were an orb, well, it wouldn't quite work as-is. I think you understand by now.";

check taking pro ball when sco-probe-all is false: say "It won't budge. At least, not right now." instead;

chapter pie crust

the pie crust is a thing. description is "Not very fancy, but it's good enough."

chapter pun tweaker

The pun tweaker is a sentient. "The pun tweaker continues to stay here, looking to swap jokes or whatever."

chapter gauche hip go ship

the gauche hip go ship is scenery. printed name is "Gauche/Hip GO-Ship". "It's really gaudy. You'll probably never get a chance to ride in it. But maybe it contains something you need."

chapter punt weaker

the punt weaker is a thing. "Your punt, weaker, floats here, ready to take you [if isle is visited]back [end if][if player is in isle]west[else]east[end if]."

book Sore Dark

Sore Dark is a room in universal. description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, or make an educated guess, you'll find it[else if sco-blast-ring is false]The sword ark hangs above you, the Terra Blade intertwined in it[else]The Terra Blade lies among the erstwhile rubble of the sword ark[end if]."

chapter sword ark

the sword ark is scenery. "The Terra Blade is suspended in the sword ark above. How to get it down?"

chapter Terra Blade

The Terra Blade is a scenery. indefinite article of terra blade is "the". "It looks very impressive, almost too impressive for you to use."

book Blah Copse

Blah Copse is a room in universal. "[if sco-or-clerk is false]The only really clear safe path is[else]Thanks to Sir Freddie and your own cleverness, you found a way north as well as[end if] back south to [branch]."

check going to Blah Copse when sco-blah-copse is false:
	now gs-tried-black-ops is true;
	say "[one of]You walk towards the black ops site, but you're flagged down. What are you doing here? How did you even get close? After some questioning, you're sent back to the Ur-Branch by people who 'suggest' you forget this ever happened. Returning is ... not advised.[or]Oh, no, you're not going back to the black ops site. You're not sure what was going on. You must've made a wrong turn. Maybe you can figure out where you were supposed to REALLY go.[stopping]"  instead;

after printing the locale description for Blah Copse when sco-surf-ready is true and sco-or-clerk is false:
	say "Sir Freddie also thought he heard an orc lurk to the north. What's up with that?";
	continue the action;

chapter Forest Team

the Forest Team for Esteem is a plural-named sentient in Blah Copse. "[one of]A group of adventurers is waiting for you here. After an over-friendly introduction where the introduce themselves as the Forest Team for Esteem, and where you don't impress them back, they begin to knock you[or]The Forest Team for Esteem continues to knock you. It's irritating, but not fatally so[stopping]."

chapter Sir Freddie

Sir Freddie is a sentient. "Sir Freddie [if player is in blah copse]stands here nervously[else]catches wave after wave, much to the dismay of the pun tweaker[end if].". description is "[if player is in blah copse]He looks uneasy. He clearly doesn't want to be here, but he also seems clueless where to go[end if]".

understand "f/fred/freddy" and "sir f/fred/freddy" as Sir Freddie when Sir Freddie is touchable.

chapter blah string

the blah string is a thing. description is "Looking at it, it doesn't seem like it could become anything powerful. Could it?". indefinite article of blah string is "some".

book Morph Lairs

Morph Lairs is a room in universal. "You're pretty sure you don't want to enter the lairs here. Even the ones that seem safe could turn unsafe quickly. And yet ... they can't just be THERE."

book Bore Dread

Bore Dread is a room in universal. description is "[if sco-board-red is false]My goodness, there seems to be nothing to do here except go back southwest. Or maybe search for some random item[else]Finding the board (red) was almost exciting. But you can't hope for anything else interesting here. Maybe just go back southwest[end if]."

chapter board red

The board red is a thing. printed name is "board (red)". "It's about six feet long and one foot wide, or it would be when unfolded (it snaps into and out of its full length easily. You checked.) THIS SIDE UP and CATCH THE WAVES are written on it."

book Pea Stalks

Pea Stalks is a room in universal. "Pea stalks grow here. But they're nothing you can eat, or prepare to eat quickly."

chapter pea pod

the pea pod is a thing. "It's an unusual pea pod. It'll go well with the meal."

book A Pile Up Isle

A Pile Up Isle is a room in universal. printed name is "A Pile-Up Isle".

the bay spikes are a thing in A Pile Up Isle. "Bay spikes seem to guard you from entering the large pile. They are too sharp to walk on. What to do?"

chapter pike

the base pikes are a plural-named thing. "A pike lies here as part of the bric-a-brac. [if sco-pie-crust is false]And, oh boy, it has some rust on it.  Pike rust![else]It is shiny and new now you repurposed its rust. Still potentially kinda base and evil, though. You don't need a weapon like this.[end if]"

section pike rust

the pike rust is a thing. "It's on the pike, sort of a cover on the side. Perhaps it is better as something else."

check taking pike rust: say "Oh, it might flake off uselessly if you just took it." instead;

chapter high cup

The high cup is a thing. "A high cup is at the top of the pile."

check taking the high cup when high cup is in Pile Up Isle: say "You take a direct path, but it's too steep." instead;

book Dome Aching

Dome Aching is a room in universal. printed name is "Dome, Aching". "[if sco-can-take is false]Ugh. You're not physically uncomfortable, you just feel ... oh, how can I describe it? A can't-ache. It prevents you from seeing anything here[else]You're a bit more aware of your surroundings now[end if]. Of course, you can always go back northwest to the Ur-Branch."

after printing the locale description for dome aching when sco-can-take is true:
	say "[if sco-gray-tins is true]The Great Inns probably gave everything they had to offer. [else]Great Inns stay off to the side here. What could they hold? ";
	say "There's that inner nest to go [b]IN[r], too. [if sco-pry-more is true]You looted it, though[else if sco-in-earnest is true]You're pretty sure you found the right way in[else]You're pretty sure it's worth getting into, since you kind of figured it's a good idea to explore everywhere[end if].";
	continue the action;

to say dome-scen:
	if dome-in-score is 0:
		say "What could they hold?";
	else if dome-in-score is 2:
		say "You've already seen both of them.";
	else if sco-gray-tins is true:
		say "You got the gray tins from the Great Inns";
	else:
		say "You showed you were worthy to visit the inner nest";

check going inside in Dome Aching when sco-can-take is true and sco-in-earnest is false:
	say "The inner nest repels you. Your motives aren't pure. Quester see, quester visit, quester score points. So cold and calculating!" instead;

chapter great inns

the great inns are scenery.

chapter gray tins

the gray tins are a plural-named thing. "There are two of them. [gray-tin-status]". understand "grey" and "grey tins" as gray tins.

to say gray-tin-status:
	if gray-tin-score is 0:
		say "Both are empty";
	else if gray-tin-score is 2:
		say "Both are full, with pie crust and dough";
	else:
		say "Only one is full. It contains [if sco-pie-crust is true]pie crust[else]dough[end if]"

chapter inscen

the inscen is privately-named scenery. understand "inner/nest" and "inner nest" as inscen when inscen is in location of player.

chapter dough

the dough is a thing. description is "It's dough, inside one of your tins.".

book Inner Nest

Inner Nest is a room in universal.

the prime oar is a thing in Inner Nest. "A prime oar stands here, floating in space[one of]. You reach out for it lazily, and it floats away[or]Whenever you get too close, it slides away[stopping]."

check taking prime oar when prime oar is in Inner Nest: say "You can't get close enough." instead;

book Fort Earns Four Turns

there is a room called Fort Earns Four Turns. it is in universal. printed name is "Fort Earns-Four-Turns". "[if sco-oh-clever is false]An oak lever is here, tempting you to pull it and maybe find another exit besides back northeast[else]The [wick] revealed when you pulled the lever is here. You can also go back northeast[end if].".

chapter oak lever

the oak lever is scenery in Fort Earns Four Turns. "It looks intricate, not something any yutz can just walk in and pull."

check taking oak lever: say "If you snap it off, you'll never find what will happen when you pull it." instead;

check pulling oak lever: say "[oak-how]." instead;
check pushing oak lever: say "[oak-how]." instead;

to say oak-how: say "It's not immediately obvious how. But there must be a way, levers being levers"

chapter beak wick

the be quick beak wick is scenery. "The be-quick beak wick sits here. [if extra-turns > 0]You can still feel its effect, though it can't hurt to touch it again[else if beak wick is examined]Just do anything with it to get it going again[else]It doesn't seem dangerous. Perhaps you should inspect it a bit[end if].";

report going when extra-turns > 0:
	decrement extra-turns;
	if extra-turns is 0, say "You feel back to normal speed.";
	continue the action;

after examining quick beak wick:
	if extra-turns is 4:
		say "You're already at maximum speed.";
	else if extra-turns > 0:
		say "You recharge yourself.";
	else:
		say "[one of]You instantly feel a disorienting surge of speed. What can you do with it?[or]You feel that speed rush again.[stopping]";
	now extra-turns is 4;
	continue the action;

chapter felt wrap

the felt wrap is a thing in Fort Earns Four Turns. "Some completely innocuous felt wrap lies here.". description is "Um. Completely innocuous. Right?".

chapter fell trap

the fell trap is a thing. "The fell trap has replaced the felt wrap. [if sco-cellar-bin is true]It looks as though it's been reset since you last visited, if you need to [b]EXAMINE[r] it and get caught again, for whatever reason[else]It looks pretty vicious! It might even catch anyone trying to [b]EXAMINE[r] it[end if]."

check examining fell trap when cell urban is unvisited:
	if cell urban is unvisited:
		say "You poke the trap, and the floor below collapses. A very brief fall, and you wind up in...";
		move player to cell urban;
		the rule succeeds;
	say "Thud! But you're a bit more prepared for the drop this time.";
	move player to Cellar Bin;

book Cell Urban

Cell Urban is a room in universal.

book Cellar Bin

Cellar Bin is a room in universal.

book Bowl Ditch

Bowl Ditch is a room in universal. "[if sob acres is visited]You wonder why this place ever intimidated you. There's Sob Acres to the north and the Ur-Branch back east[else if sco-bold-itch is true]Now you've got your bearings, you see a passage north as well as back east[else]Ouch. Oww. You're lying on the ground, embarrassed how you tripped and fell, worried and scared there's no way back. Your injury is probably more psychological than physical, but it's there, and you need to overcome it[end if]."

chapter clay mitt

the clay mitt is a thing. description is "[if sco-claim-it is false]It's not yours, so you can't take it. You guess. Well, as things stand[else]It should protect your hands against all but the fieriest of oven flames[end if].".

check taking clay mitt when clay mitt is in Bowl Ditch: say "You don't feel bold enough to. Just taking isn't enough." instead;

book Sob Acres

Sob Acres is a room in universal. printed name is "[if sco-dell-eastern is false]Sob Acres[else]Dell, Eastern[end if]".

book Deli Stern

Deli Stern is a room in universal. printed name is "Deli, Stern". "You can only really go out[if sco-dell-eastern is true] (well, east, same thing)[end if] here."

volume unsorted

book unclaimed things

chapter scribe red

the scribe red is a sentient. printed name is "scribe (red)".

chapter bread

the bread is a thing.

volume regular verbs

book drop/take

check taking: if noun is not a hintthing, say "You never need to take anything explicitly in [this-game], though you have the option of taking two hint items. However, trying to take an item may give you a hint as to what you really need to do to acquire or use it." instead;

check drop2ing: say "You never need to drop anything explicitly in [this-game]. Often, when you're done with something, it will be consumed. Also, there is no inventory limit." instead;


book talk (redefined in Oronym Core)

check ting:
	if noun is Mike West, say "You say, meek, a 'Me? [']Kay!'" instead;
	if noun is meh spot, say "It may make you say 'meh' a lot, but it's not going to say anything back." instead;
	if noun is forest team, say "They generally talk you down and continue to find ways to knock you." instead;
	if player is in beach and freddie is in beach:
		if noun is pun tweaker or noun is Sir Freddie:
			say "You don't have the skills to talk out a detente." instead;
	if noun is pun tweaker, say "The pun tweaker throws a ton of puns you've heard before at you and feels very clever for this." instead;
	if noun is Sir Freddie, say "'Ho, pawn! Hope on!'" instead;
	if noun is not a sentient, say "No response. You should usually talk to living things, or things that can respond as if they were living." instead;
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

volume ending tweak

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
--	true	"ace two"	poker cheat rule	--

this is the poker cheat rule:
	say "[one of]Well, your friends didn't believe your whole tale of how you got here, and how you provided this nice meal, so they'd never believe you could cheat like this.[paragraph break]Of course, you're not playing for high stakes, but it's the principle of the thing. Next time when you all go out to eat, it's your treat. Your friends applaud your generosity, but you say it wa nothing. It really was, too.[or]You already cheated to win. It would be less fun the second time. And your friends might catch on, too.[stopping]";

volume misc map

index map with mine ooh mapped west of house well how swell.
index map with bore dread mapped south of mine ooh.
index map with ur branch mapped southwest of bore dread.

index map with Blah Copse mapped north of ur branch.
index map with Morph Lairs mapped north of Blah Copse.

index map with sore dark mapped northwest of ur branch.

index map with Beach Ill mapped east of ur branch.
index map with Pile Up Isle mapped east of Beach Ill.

index map with Pea Stalks mapped south of Pile Up Isle.

index map with Dome Aching mapped southeast of ur branch.
index map with inner nest mapped southeast of Dome Aching.

index map with Fort Earns Four Turns mapped southwest of Ur Branch.
index map with Cell Urban mapped southwest of Fort Earns Four Turns.
index map with Cellar Bin mapped west of Fort Earns Four Turns.

index map with Bowl Ditch mapped north of Cellar Bin.
index map with Sob Acres mapped north of Bowl Ditch.
index map with Deli Stern mapped west of Sob Acres.

index map with Too Dark Tude Ark mapped south of Fort Earns.
index map with Ordroom2 mapped east of Tude Ark.
index map with Ordroom3 mapped east of Ordroom2.
index map with Too Dark Tude Ark mapped south of Fort Earns.
