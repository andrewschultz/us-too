"Us Too" by Hugh Morris

[Ace Plitt and Ike Whipp]

volume includes

section general

include Bold Final Question Rows by Andrew Schultz.

include Standard Helping Metaverbs by Andrew Schultz.

include Versioning and Extensions Tweak by Andrew Schultz.

section series specific

include Oronym Core by Andrew Schultz.

section game specific

include Us Too Globals by Andrew Schultz.

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Mistakes by Andrew Schultz.

[ section beta heading (later) ]

section testing headings - not for release

include Us Too Tests by Andrew Schultz.

volume intro

when play begins:
	now left hand status line is "[location of player]";
	say "The old mine is yours, now. You were left it in a will by a relative you barely remember. [ara]. She gave you a weird little logic puzzle. 'Tricky,' you mused, and she seemed to smile. But you did not solve it, until the family gathering was over. She had already gotten in her car, and you tried to yell as she drove away. Your family told you not to bug her, which was funny, because everyone seemed to be buttering her up about how rich she was.";
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

volume introductory

part House Well So Swell

House Well How Swell is a room in intro. printed name is "House Well-How-Swell". "The lawyers look at you expectantly. You fiddle with your envelope. You hope you haven't come all this way for nothing!". eyes-number of House Well How Swell is 1.

after reading a command when player is in House Well How Swell:
	if debug-state is true:
		if word number 1 in the player's command is "test" or word number 1 in the player's command is "gonear":
			continue the action;
	if word number 1 in the player's command is "about" or word number 1 in the player's command is "credits" or word number 1 in the player's command is "versions" or word number 1 in the player's command is "ext" or word number 1 in the player's command is "exts" or word number 1 in the player's command is "transcript":
		continue the action;
	if the player's command exactly matches the text "look" or the player's command exactly matches the text "l" or the player's command exactly matches the text "quit" or the player's command exactly matches the text "restore":
		continue the action;
	if the player's command exactly matches the text "how so":
		say "One lawyer stands up and snaps their fingers. 'There you go! I knew you'd get it.";
		increment core-score;
		follow the score and thinking changes rule;
		wfak;
		say "'Let's see, you're ... oh, you're the kid who ran after her with the solution to her little puzzle. Uh, were. She really was impressed, but she was just so sick of being fawned over, she didn't want to get out of her car again. She knew from the way some of her worse relatives bad-mouthed you, you were more than all right. She owned this old mine and even had a small trust fund to pay taxes. Though for you, it's sort of a new mine... and just checking, but you know what to say?'";
		wfak;
		say "You pause. Then 'MY new mine?! Ooh...'[paragraph break]'Bingo! Again!'";
		wfak;
		say "You're a bit worried. You can't just up and leave your job like that. What if it's a scam? The lawyers assure you the mine is not going anywhere. You build up vacation time from work. You call some trusted friends. 'You're getting shafted,' a few laugh. Enough don't.";
		wfak;
		move player to My New Mine Ooh;
		reject the player's command;
	if number of words in the player's command > 2:
		say "The lawyers yawn. All those words! You really are talking too much[if first-command-points > 0], though there MAY have been something in what you said...[else]![end if]";
	else if first-command-points > 0:
		if first-command-points is 2:
			say "The lawyers make little flip-it-around motions with their hands.";
		else:
			say "The lawyers['] ears seem to perk up for a second.";
	else if the number of characters in the player's command > 8:
		say "One of the lawyers casually remarks [ara] was never big on unnecessarily long words.";
	else if number of words in the player's command < 2:
		say "One of the lawyers tells you to speak up a little, there, and don't cut yourself off so soon.";
	else if the player's command includes "lawyers" or the player's command includes "lawyer":
		say "The lawyers sit, stone-faced. You will get no clues from them.";
	else if the player's command includes "envelope" or the player's command includes "think" or the player's command includes "hint" or the player's command includes "help" or word number 1 in the player's command is "i" or word number 1 in the player's command is "inventory":
		say "You glance at your envelope, pretty much all you have on you, [one of]once again [or][stopping]worried you might be cheating. But you can't imagine what other clue you have.[paragraph break]The lawyers [one of]still [or][stopping]look nonchalant, fortunately. It says [hohs].";
		now gs-envelope is true;
	else if the player's command includes "me" or the player's command includes "myself" or the player's command includes "trike" or the player's command includes "west":
		try examining the player;
	else:
		say "The lawyers shake their head slightly, though you sense that's the worst you'll get from them.";
	increment starter-counter;
	if starter-counter is 5, follow the explain the house rule;
	reject the player's command;

after printing the locale description for house when house is unvisited:
	follow the explain the house rule;
	continue the action;

this is the explain the house rule:
	say "[i][bracket][b][one of]NOTE[or]REMINDER[stopping][r][i]: standard commands aren't necessary or useful here. You have to figure what to say. But it's not very long. You can also try [b]ABOUT[r][i] or [b]VERBS[r][i].[close bracket][line break]";
	now starter-counter is 0;
	now gs-explained-house is true;
	continue the action;

rule for printing a parser error when the latest parser error is the I Beg Your Pardon error and player is in House Well:
	say "You fumble nervously with your envelope reflect on what the lawyers might want to hear. Dare you sneak [if gs-envelope is true]another[else]a[end if] peak at it?";
	the rule succeeds;

part Trike West (you)

Trike West is a person in House Well How Swell. the player is Trike West. description of Trike West is "You are 'Trike' West. People (well, except [ara], even when provoked) always said it was a weird nickname, but it was one you embraced, after being about the only kid in your neighborhood without a Big Wheel and then almost riding it into the school on the first day of first grade, then holding out on riding a real bicycle. It persisted even after you rode your bike as other kids got their drivers' licenses.[paragraph break]'What the heck would you want to be named like that for? It stands out, yeah, but not in a good way.'[paragraph break][if sco-try-quest is true]You've sort of proven them wrong[else]Maybe you can snap out of your funk and prove them wrong[end if].". eyes-number of Trike West is 35. eyes-rule of Trike West is pre-try-quest rule.

part "item using"

Aight Amusing Item Using is a startthing. description of Aight is "[aight-stuff]". printed name of Aight is "[i][']Aight, Amusing Item Using[r]". eyes-number of Aight Amusing Item Using is 1.

Trike West carries Aight Amusing Item Using.

check examining aight for the first time:
	say "It's a recipe, actually.";

check examining aight when sco-try-quest is false:
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
		now noun is Trike West;
	continue the action;

report taking inventory when gs-using-known is false:
	default-x-to-aight;
	continue the action;

chapter Aw Lug All Ugh

the Aw Lug All Ugh is a thing. printed name is "Aw-Lug-All-Ugh". description is "Looks really sturdy--[if core-score < 20]it can hold a lot, you bet[else if core-score < 40]it's held up well for the adventure[else if assortment is off-stage]you're slightly worried it will burst[else]it's pretty much full. Unless you have missed a detail, you might want to finish things up[here-in of mine][end if].". Trike West carries the Ugh. eyes-number of Ugh is -1.

chapter cheese

the cheese is a singular-named thing. description is "All sorts of cheese, really. Everyone is sure to like one of the types. They're probably sure to hate another, what with some types of cheese being really really polarizing, but that just leaves more for everyone else.". eyes-number of cheese is 1. indefinite article of cheese is "some".

chapter dense pecs / den specs

the dense pecs are a plural-named thing. description is "You admire your well-earned, newfound physical fitness[if sco-den-specs is true], though perhaps you can swap it for something more useful, since this quest has been relatively nonviolent[else], as well as your prowess converting it into something more useful[end if].". eyes-number of dense pecs is 35. eyes-rule of dense pecs is pre-den-specs rule.

the den specs are a plural-named thing. eyes-number of den specs is -1.

part too rad tour ad

the too rad tour ad is a startthing. eyes-number of too rad tour ad is 1.

check drop2ing tour ad when tour ad is unexamined: say "You can drop it, but read it, first, to make sure it isn't really useful." instead;

Trike West carries the too rad tour ad. printed name of tour ad is "too-rad tour ad".

description of tour ad is "It describes your new mine in detail. It's too big to explore on your own. So you need friends to bring together. And you need a way to bring them together."

volume main rooms

book introduction

part my new mine ooh

My New Mine Ooh is a room in intro. printed name is "My New Mine, Ooh!". description is "You're down in your new mine, with a passage up back to the great wide world[if sco-be-strong is true]. You've cleared the way--you can't be sure of the direction, as the path twists a bit[else if sco-try-quest is false]. But you're still finding your bearings and purpose. You feel a bit of imposter syndrome, just being given this mine. You don't want to just start wandering. At least you know who you are, and maybe that'll help reframe things[end if].". eyes-number of Mine Ooh is 1.

to note-mine (th - a thing):
	if th is in location of player, say "A [th] juts out here. [if ledge is unexamined]Maybe something is on it[else]You see [the list of hintthings in mine ooh] on it[end if].";

after printing the locale description for My New Mine Ooh:
	note-mine lucent row;
	note-mine ledge;
	continue the action;

after examining lucent row:
	now ledge is examined;
	continue the action;

check thinking in Mine Ooh when sco-try-quest is false:
	say "You're a bit lost, but you track what you know:";
	say "[line break]--you went to [hwhs], called [hohs], and your response 'How so?' impressed the lawyers.";
	say "[line break]--the lawyers reacted positively to 'My new mine, ooh!'";
	if gs-taken-inventory is true:
		say "[line break]--the [tour ad] and [using] are ... odd, to say the least.";
	say "[line break]--your name is Trike West. [ara] said she REALLY liked that name.";
	if gs-taken-inventory is false:
		say "[line break]Maybe you should take [b]INVENTORY[r] with [b]I[r]. That might provide another clue.";
	the rule succeeds;

check going up in Mine Ooh:
	if sco-try-quest is false, say "You don't want to go wandering outside after you just got here! You need to catch your bearings. Focus on yourself a bit. Maybe even a lot." instead;
	if sco-be-strong is false, say "[The beast] blocks your way. How wrong of it! You try physically shifting around, but it's unmoved. Maybe adjusting your mental attitude will do the trick." instead;
	if aight is not examined:
		say "You're eager to rush out there, but perhaps you should peruse the ... documentation you were given, first. You haven't really looked at [item using] from your inventory, yet. Sure, you could go out there and find stuff scattershot, but why not have some direction?" instead;
	if ur branch is unvisited, say "So you begin your quest...";
	if test-mine-only is true:
		say "Or you would, if this wasn't a test version. Thanks for getting through.";
		follow the shutdown rules;
		the rule succeeds;

[when play begins: now test-mine-only is true;]

chapter beast wrong

the beast wrong is a sentient. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch.". eyes-number of beast wrong is 26. eyes-rule of beast wrong is pre-be-strong rule.

chapter hintthings in mine

to say intro-hintthings: say "You see [the list of hintthings in mine ooh] on it."

section lucent row

a lucent row is a startprop in My New Mine Ooh. "[intro-hintthings]". eyes-number of lucent row is -55. eyes-rule of lucent row is pre-loose-intro rule.

check examining lucent row when lucent row is examined and number of hintthings in My New Mine Ooh is 0: say "There's nothing on the lucent row, but maybe if you looked at it right, it might show something. Some sort of message, beneath the glare, which seems kind of unaesthetic." instead;

report examining lucent row:
	say "Oh. The glare and brightness seem a bit unaesthetic, like it could even be hiding something, but it can't be a huge deal.";
	continue the action;

section goal edge go ledge

the goal edge go ledge is a startprop. printed name is "Goal-Edge-Go Ledge". "[intro-hintthings]". eyes-number of Goal Edge Go Ledge is 1.

check taking a startprop:
	if slice eyes are off-stage, say "You can't, but if you [b]EXAMINE[r] [the noun], you may find something on it." instead;
	if number of hintthings in Mine Ooh is 0, say "You already took what was on [the noun]." instead;
	say "You can just take [the list of hintthings in Mine Ooh] if you want." instead;

check examining startprop when the noun is unexamined:
	say "Carved on [the noun] is a message from [ara]. 'These may help. Maybe too much.'[paragraph break]They look weird at first, but after having a thought, you see they are [eyes] and [a war pawn]. You're free to [b]TAKE[r] them, if you want.";
	move slice eyes to mine ooh;
	move war pawn to mine ooh;
	now the noun is examined;
	now ledge is examined;
	the rule succeeds;

chapter taking hintthings

report taking a hintthing when gs-take-hintthing-note is false:
	say "Done. (By the way, you don't need to explicitly [b]TAKE[r] any game-critical items.)";
	now gs-take-hintthing-note is true;
	the rule succeeds;

report taking a hintthing when gs-take-hintthing-note is true:
	say "On taking [the noun], you see [the ledge] recede, as it has nothing more to offer.";
	now gs-take-hintthing-note is true;
	the rule succeeds;

chapter loose intro

the loose intro is a hintthing. description is "[intro-table]". eyes-number of loose intro is -1.

check examining loose intro when loose intro is unexamined:
	say "It's an introduction to your world, not from [ara], but from one Hugh Morris AKA Mick Stupp. At the top is a warning about mild spoilers that get less mild as you read on.";
	now loose intro is examined;
	the rule succeeds;

to say intro-table:
	choose row intro-row in table of intro jabber;
	say "[my-jabber entry] ([intro-row]/[number of rows in table of intro jabber])[line break]";
	increment intro-row;
	if intro-row > number of rows in table of intro jabber:
		say "[line break][one of]Well, that's it.[or]Was it really worth reading twice? Thank you![stopping][run paragraph on]";
		now intro-row is 1;

chapter meh spot

the meh spot is a thing. "The meh spot you saw in the pro ball sits here. It makes your mine feel emptier. Perhaps something belongs there.". eyes-number of meh spot is 43. eyes-rule of meh spot is pre-mess-pot rule.

chapter mess pot

the mess pot is a thing. eyes-number of mess pot is -34. eyes-rule of mess pot is pre-meh-skit rule.

part ur branch

Ur Branch is a room in universal. It is above My New Mine Ooh. printed name is "Ur-Branch". "There are so many branches here! While you can go back [b]DOWN[r] to your mine, [if sco-summer-bay is false]you have no idea where else to go. You could spend too much time wandering around. You could lose focus[else if sco-probe-all is false]there's only east, but maybe you can find more concrete places to visit[else]the branches make more sense than they did at first[end if].". eyes-number of Ur Branch is 45. eyes-rule of Ur Branch is pre-herb-ranch rule.

rule for printing the locale description of ur branch:
	now pri-branch-reject is true;
	let numcan be number of branchcan directions;
	if numcan is 0, say "Looks like you'll need to find something to do here to get started.";
	if numcan > 0, say "The [if numcan > 1]branches you currently feel sure of lead[else]only branch you've found so far leads[end if] [list of branchcan directions]. ";
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
	say "[line break]You hear a rumbling from the pro ball. You see an inverted image of this very Ur-Branch! Not only that, you see passages northwest and northeast, to hidden lairs. You wonder why they only became available now, but then you realize your time cleaning up the meh spot helped you be more organized and see more organization, and perhaps you weren't ready to look at the pro ball right. You take another look, and there seems to be a leaf path north. But it leaves you (heh) a bit uneasy.";
	reveal bore dread to northeast;
	reveal Blah Copse to north;
	reveal sore dark to northwest;
	continue the action;

after printing the locale description for Ur Branch when player has rope ladder and up is branchcant:
	say "You feel [the ladder] tug you off in an odd direction. There you find a steep cliff face. The rope ladder seems to uncoil and go upwards. Hmm, you'd have missed that, but you know it now.";
	reveal Throne Ow Throw Now to up;
	continue the action;

check going up in Ur Branch when up is not branchcant and sco-no-date is false:
	say "You feel a sense of dread as you climb up the rope ladder. Whatever's up there, you're not ready." instead;

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

some herbs are a proper-named thing. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "[if sco-summer-bay is true]those herbs[else]'some herb, eh?'". understand "herbs/herb eh" and "herb" as some herbs. eyes-number of some herbs is 63. eyes-rule of herbs is pre-summer-bay rule.

chapter black ops

the black ops are a thing. "You know black ops are lurking to the north.". description is "If I could describe them, they wouldn't be very good black ops.". eyes-number of black ops is 45. eyes-rule of black ops is pre-blah-copse rule.

chapter garden tree

the garden tree is a thing. "[if sco-guard-entry is true]The garden tree stands here, passively[else]That garden tree the [forest] were whining about stands here[end if].". eyes-number of garden tree is 55. eyes-rule of garden tree is pre-guard-entry rule.

chapter sign and verbs

the sign ought sigh not is a thing. printed name is "Sign Ought-Sigh-Not". "[one of]A new sign titled SIGN OUGHT-SIGH-NOT stands here. What a relief! It explains how to get back south without, well, wearing yourself out with busy work.[or]The SIGN OUGHT-SIGH-NOT stands here for reference.[stopping]". description of sign ought sigh not is "WAYS SOUTH:". eyes-number of Sign Ought Sigh Not is -1.

report examining sign ought sigh not:
	list-which-room;
	continue the action;

chapter ssing

ssing is an action out of world.

understand the command "ss" as something new.
understand the command "s2" as something new.
understand the command "2s" as something new.

understand "ss" as ssing when player is in ur branch and sign ought is in ur branch.
understand "s2" as ssing when player is in ur branch and sign ought is in ur branch.
understand "2s" as ssing when player is in ur branch and sign ought is in ur branch.

carry out ssing:
	move player to entry 2 of south-found;
	the rule succeeds;

chapter sssing

sssing is an action out of world.

understand the command "sss" as something new.
understand the command "s3" as something new.
understand the command "3s" as something new.

understand "sss" as sssing when player is in ur branch and sign ought is in ur branch.
understand "3s" as sssing when player is in ur branch and sign ought is in ur branch.
understand "s3" as sssing when player is in ur branch and sign ought is in ur branch.

carry out sssing:
	move player to entry 3 of south-found;
	the rule succeeds;

chapter nning

nning is an action out of world.

understand the command "nn" as something new.
understand the command "n2" as something new.
understand the command "2n" as something new.

understand "nn" as nning when player is in Dust Which or player is in Scribe Room or player is in Dam Pink.
understand "n2" as nning when player is in Dust Which or player is in Scribe Room or player is in Dam Pink.
understand "2n" as nning when player is in Dust Which or player is in Scribe Room or player is in Dam Pink.

carry out nning:
	move player to Ur Branch;
	the rule succeeds;

book east branch

part Beach Ill

Beach Ill is a room in universal. printed name is "[if sco-be-chill is false]Beach, Ill[else if sco-probe-all is false]Bless-and-Bleah Sand[else]Dune Ever-Do-Never[end if]". "[if sco-be-chill is false]You have a general sense of malaise here, which isn't usual for these environs, but it's there, and not being able to get rid of it simply is causing more malaise[else]It's nice here. The only way out on foot is back west, since you can't swim the other ways[end if].". eyes-number of Beach Ill is 25. eyes-rule of Beach Ill is pre-be-chill rule.

after printing the locale description of Beach Ill when sco-peace-talks is true and Sir Freddie is not moot:
	say "With the lessons learned from the Pea Stalks, you broker a tentative truce between the pun teaker and Sir Freddie. The pun tweaker is quite grateful for this. 'What can I offer you?' 'Oh, nothing much, you say.' The pun tweaker says 'oh of course' a bit too quickly.";
	moot Sir Freddie;
	continue the action;

check going east in Beach Ill when sco-probe-all is true:
	if sco-punt-weaker is false, say "You have no transport. Yet. And the pun tweaker won't take you for free." instead;
	if sco-pry-more is false, say "You have no way to steer the punt. Yet." instead;
	if pile-done, say "You're pretty sure you found everything there." instead; [1st condition may not be necessary, but make sure of things]
	say "[one of]Your punt (weaker) is not useless. Maybe the prime oar will help it be more useful.[or]The punt returns to the isle with no incident.[stopping]";
	move punt to isle;
	move oar to isle;

check going west in Pile Up Isle:
	say "You have no problem steering the punt back. It seems surprisingly sturdy.";
	move punt to beach;
	move oar to beach;

chapter nigh swarm

the nigh swarm is a thing. "A nigh swarm ruins the tranquility of the area. You can't see behind it.". description is "The nigh swarm buzzes aggresively.". eyes-number of nigh swarm is 44. eyes-rule of nigh swarm is pre-nice-warm rule.

chapter pro ball

the pro ball is a thing. description is "[if sco-probe-all is false]If you look at it right, you may be able to see a bit more, but you haven't, yet[else]Hmmph. The pro ball doesn't seem to reveal anything new when you look at it for any period of time[end if].". eyes-number of pro ball is 53. eyes-rule of pro ball is pre-probe-all rule.

check examining pro ball for the first time: say "It's not a pro sports ball. More like an orb. But if it were an orb, well, it wouldn't quite work as-is. I think you understand by now.";

check taking pro ball when sco-probe-all is false: say "It won't budge. At least, not right now." instead;

chapter pie crust

the pie crust is a thing. description is "Not very fancy, but it's good enough.". eyes-number of pie crust is -1.

chapter pun tweaker

The pun tweaker is a sentient. "The pun tweaker continues to stay here, looking to swap jokes or whatever.". eyes-number of pun tweaker is 46. eyes-rule of pun tweaker is pre-punt-weaker rule.

chapter gauche hip go ship

the gauche hip go ship is scenery. printed name is "Gauche/Hip GO-Ship". "It's really gaudy. You'll probably never get a chance to ride in it. But maybe it contains something you need.". eyes-number of Gauche Hip GO Ship is 1.

chapter punt weaker

the punt weaker is a thing. "Your punt, weaker, floats here, [punt-status].". eyes-number of punt weaker is -1.

to say punt-status:
	if pile-done:
		say ". It served you well, but you can't think of a reason to go back to the isle";
	else:
		say "ready to take you [if isle is visited]back [end if][if player is in isle]west[else]east[end if]"

book northwest branch

part Sore Dark

Sore Dark is a room in universal. description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, or make an educated guess, you'll find it[else if sco-blast-ring is false]The sword ark hangs above you, the Terra Blade intertwined in it[else]The Terra Blade lies among the erstwhile rubble of the sword ark[end if].". eyes-number of Sore Dark is 53. eyes-rule of Sore Dark is pre-sword-ark rule.

chapter sword ark

the sword ark is scenery. "The Terra Blade is suspended in the sword ark above. How to get it down?". eyes-number of sword ark is -1.

chapter Terra Blade

The Terra Blade is a scenery. indefinite article of terra blade is "the". "It looks very impressive, almost too impressive for you to use.". eyes-number of Terra Blade is 83. eyes-rule of Terra Blade is pre-terrible-aid rule.

book north branch

part Blah Copse

Blah Copse is a room in universal. "[if sco-or-clerk is false]The only really clear safe path is[else]Thanks to Sir Freddie and your own cleverness, you found a way north as well as[end if] back south to [branch].". eyes-number of Blah Copse is -1.

check going to Blah Copse when sco-blah-copse is false:
	now gs-tried-black-ops is true;
	move black ops to Ur Branch;
	say "[one of]You walk towards the black ops site, but you're flagged down. What are you doing here? How did you even get close? After some questioning, you're sent back to the Ur-Branch by people who 'suggest' you forget this ever happened. Returning is ... not advised.[or]Oh, no, you're not going back to the black ops site. You're not sure what was going on. You must've made a wrong turn. Maybe you can figure out where you were supposed to REALLY go.[stopping]"  instead;

after printing the locale description for Blah Copse when sco-surf-ready is true and sco-or-clerk is false:
	say "Sir Freddie also thought he heard an orc lurk to the north. What's up with that?";
	continue the action;

chapter Forest Team

the Forest Team for Esteem is a plural-named hostile sentient in Blah Copse. "[one of]A group of adventurers is waiting for you here. After an over-friendly introduction where the introduce themselves as the Forest Team for Esteem, and where you don't impress them back, they begin to knock you, well, verbally[or]The Forest Team for Esteem continues to knock you verbally. Which isn't fatal, but it's getting in the way of you deciding what to do next[stopping].". eyes-number of Forest Team is 35. eyes-rule of Forest Team is pre-nah-queue rule.

chapter Sir Freddie

Sir Freddie is a sentient. "Sir Freddie [if player is in blah copse]stands here nervously[else]catches wave after wave, much to the dismay of the pun tweaker[end if].". description is "[if player is in blah copse]He looks uneasy. He clearly doesn't want to be here, but he also seems clueless where to go[end if]". eyes-number of Sir Freddie is 45. eyes-rule of Sir Freddie is pre-surf-ready rule.

understand "f/fred/freddy" and "sir f/fred/freddy" as Sir Freddie when Sir Freddie is touchable.

chapter blah string

the blah string is a thing. description is "Looking at it, it doesn't seem like it could become anything powerful. Could it?". indefinite article of blah string is "some". eyes-number of blah string is 54. eyes-rule of blah string is pre-blast-ring rule.

part Morph Lairs

Morph Lairs is a room in universal. "[if sco-more-flares is false]You're pretty sure you don't want to enter the lairs here. Even the ones that seem safe could turn unsafe quickly. And yet ... they can't just be THERE[else if gs-row-plaider is false]Returning here, you wonder what you will find[else]The row (plaider) of houses that were once morph lairs stands here[end if].". eyes-number of morph lairs is 46. eyes-rule of Morph Lairs is pre-more-flares rule.

after printing the locale description for Morph Lairs when sco-more-flares is true and gs-row-plaider is false:
	now gs-row-plaider is true;
	move row plaider to Morph Lairs;
	say "The morph lairs have certainly morphed. There is now a whole row of houses. They seem lifeless, but they're all -- well, plaid. More plaid than anything you've seen. Why, you could call them a row, plaider.";
	continue the action;

chapter row plaider

the row plaider is scenery in Morph Lairs. "Boy, it's plaider than anything you've ever seen[if sco-rope-ladder is false]. All that plaid does a number on your eyes. Maybe it's hiding something in plain sight[else]. You're not all that interested in it, now that you've gotten the rope ladder[end if].". eyes-number of row plaider is 46. eyes-rule of row plaider is pre-rope-ladder rule.

chapter rope ladder

the rope ladder is a thing. "It seems sturdy enough, for places slightly out of reach.". eyes-number of rope ladder is -1.

report examining rope ladder:
	if up is not branchcant, say "But you remember how it uncoiled to reveal a passage up from [here-in of ur branch].";
	continue the action;

book northeast branch

part Bore Dread

Bore Dread is a room in universal. description is "[if sco-board-red is false]My goodness, there seems to be nothing to do here except go back southwest. Or maybe search for some random item[else]Finding the board (red) was almost exciting. But you can't hope for anything else interesting here. Maybe just go back southwest[end if].". eyes-number of Bore Dread is 53. eyes-rule of Bore Dread is pre-board-red rule.

check going east in Bore Dread when sco-malt-hour is false: say "Not without destroying the maul tower or mollifying its inhabitants. In fact, you take a few steps east, only to hear that keeping people out is thirsty work." instead;

chapter maul tower

the maul tower is a thing in Bore Dread. "A maul tower rises up menacingly to the east.". eyes-number of maul tower is 44. eyes-rule of maul tower is pre-malt-hour rule.

chapter board red

The board red is a thing. printed name is "board (red)". "It's about six feet long and one foot wide, or it would be when unfolded (it snaps into and out of its full length easily. You checked.) THIS SIDE UP and CATCH THE WAVES are written on it.". eyes-number of board red is -1.

part Joy Nadir

Joy Nadir is a room in universal. it is east of Bore Dread. printed name is "[if sco-join-aider is true]Dew Pit[else]Joy Nadir[end if]". "[if sco-join-aider is false]Maybe the maul tower was guarding you for your own good. It seems that way on first impression[else]It's less cheerless now. But you still hope you can do something here[end if].". eyes-number of joy nadir is 45. eyes-rule of joy nadir is pre-join-aider rule.

chapter dew pit

a dew pit is scenery. "It seems hungry but not greedy.". eyes-number of dew pit is 24. eyes-rule of dew pit is pre-dupe-it rule.

chapter orb and or band

there is a thing called the orb and or band. printed name is "orb and/or band". description is "Being made from the belt (rusted) and the pro ball, it's clearly a powerful artifact. Just holding it, you feel occasional surges of power. But where to unleash this power?". eyes-number of orb is -1.

chapter ten dregs tender eggs

there is a proper-named thing called Ten Dregs Tender Eggs. printed name is "Ten Dregs['] Tender Eggs". "It's a carton of ten eggs, each slightly smaller than the original Egg of a Guv, but still plenty big and, you hope, tasty. It should be enough to whip out whatever you need to, when the time comes.[paragraph break]You have to admit the brand name worried you until you read this elsewhere on the carton: 'We strenuously fallow all tend-regs.'". eyes-number of tender eggs is -1.

book inside

part Pea Stalks

Pea Stalks is a room in universal. "Pea stalks grow here. But they're nothing you can eat, or prepare to eat quickly.". eyes-number of Pea Stalks is 55. eyes-rule of Pea Stalks is pre-peace-talks rule.

chapter pea pod

the pea pod is a thing. "It's an unusual pea pod. It'll go well with the meal.". eyes-number of pea pod is -1.

book east branch

part A Pile Up Isle

A Pile Up Isle is a room in universal. printed name is "A Pile-Up Isle". eyes-number of A Pile Up Isle is 1.

the bay spikes are a plural-named thing in A Pile Up Isle. "Bay spikes seem to guard you from entering the large pile. They are too sharp to walk on. What to do?". eyes-number of bay spikes is 45. eyes-rule of bay spikes is pre-base-pikes rule.

chapter pike

the base pikes are a plural-named thing. "A pike lies here as part of the bric-a-brac. [if sco-pie-crust is false]And, oh boy, it has some rust on it.  Pike rust![else]It is shiny and new now you repurposed its rust. Still potentially kinda base and evil, though. You don't need a weapon like this.[end if]". eyes-number of base pikes is -1.

section pike rust

the pike rust is a thing. "It's on the pike, sort of a cover on the side. Perhaps it is better as something else.". eyes-number of pike rust is 35. eyes-rule of pike rust is pre-pie-crust rule.

check taking pike rust: say "Oh, it might flake off uselessly if you just took it." instead;

chapter high cup

The high cup is a thing. "A high cup is at the top of the pile.". eyes-number of high cup is 42. eyes-rule of high cup is pre-hike-up rule.

check taking the high cup when high cup is in Pile Up Isle: say "You take a direct path, but it's too steep." instead;

book southeast branch

part Dome Aching

Dome Aching is a room in universal. printed name is "Dome, Aching". "[if sco-can-take is false]Ugh. You're not physically uncomfortable, you just feel ... oh, how can I describe it? A can't-ache. It prevents you from seeing anything here[else]You're a bit more aware of your surroundings now[end if]. Of course, you can always go back northwest to the Ur-Branch.". eyes-number of Dome Aching is 56. eyes-rule of Dome Aching is pre-dough-making rule.

after printing the locale description for dome aching when sco-can-take is true:
	say "[if sco-gray-tin is true]The Great Inn probably gave everything it had to offer. [else]A Great Inn is located off to the side here. What could they hold? ";
	say "[line break]There's that inner nest to go [b]IN[r], too. [if sco-pry-more is true]You looted it, though[else if sco-in-earnest is true]You're pretty sure you found the right way in[else]You're pretty sure it's worth getting into, since you kind of figured it's a good idea to explore everywhere[end if].";
	continue the action;

to say dome-scen:
	if dome-in-score is 0:
		say "What could they hold?";
	else if dome-in-score is 2:
		say "You've already seen both of them.";
	else if sco-gray-tin is true:
		say "You got the gray tin from the Great Inn";
	else:
		say "You showed you were worthy to visit the inner nest";

check going inside in Dome Aching when sco-can-take is true and sco-in-earnest is false:
	say "The inner nest repels you. Your motives aren't pure. Quester see, quester visit, quester score points. So cold and calculating!" instead;

chapter great inn

the great inn is scenery. eyes-number of great inn is 43. eyes-rule of great inn is pre-gray-tin rule.

chapter gray tin

the gray tin is a thing. "The gray tin is curently [if sco-pie-crust is false]empty[else]full of pie crust.". understand "grey" and "grey tins" as gray tin. eyes-number of gray tin is -1.

chapter inscen

the inscen is privately-named scenery. understand "inner/nest" and "inner nest" as inscen when inscen is in location of player. eyes-number of inscen is 27. eyes-rule of inscen is pre-in-earnest rule.

chapter dough

the dough pail is a thing. description is "It's a pail full of dough.". eyes-number of dough pail is 43. eyes-rule of dough pail is pre-dope-ale rule.

the dope ale is a thing. indefinite article of dope ale is "some". description is "Well, its label is pretty dope, you guess.". eyes-number of dope ale is -1.

part Inner Nest

Inner Nest is a room in universal. eyes-number of Inner Nest is -1.

the prime oar is a thing in Inner Nest. "A prime oar stands here, floating in space[one of]. You reach out for it lazily, and it floats away[or]Whenever you get too close, it slides away[stopping].". eyes-number of prime oar is 34. eyes-rule of prime oar is pre-pry-more rule.

check taking prime oar when prime oar is in Inner Nest: say "You can't get close enough." instead;

book southwest branch

part Fort Earns Four Turns

there is a room called Fort Earns Four Turns. it is in universal. printed name is "Fort Earns-Four-Turns". "[if sco-oh-clever is false]An oak lever is here, tempting you to pull it and maybe find another exit besides back northeast[else]The [wick] revealed when you pulled the lever is here. You can also go back northeast[end if].". eyes-number of fort earns is 1.

chapter oak lever

the oak lever is scenery in Fort Earns Four Turns. "It looks intricate, not something any yutz can just walk in and pull.". eyes-number of oak lever is 26. eyes-rule of oak lever is pre-oh-clever rule.

check taking oak lever: say "If you snap it off, you'll never find what will happen when you pull it." instead;

check pulling oak lever: say "[oak-how]." instead;
check pushing oak lever: say "[oak-how]." instead;

to say oak-how: say "It's not immediately obvious how. But there must be a way, levers being levers"

chapter beak wick

the be quick beak wick is scenery. "The be-quick beak wick sits here. [if extra-turns > 0]You can still feel its effect, though it can't hurt to touch it again[else if beak wick is examined]Just do anything with it to get it going again[else]It doesn't seem dangerous. Perhaps you should inspect it a bit[end if].". eyes-number of be quick beak wick is -1.

check waiting when extra-turns > 0: say "You're too antsy to sit and wait. For better or worse, the be-quick beak-wick doesn't just give you the opportunity to be faster. It COMPELS you." instead;

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

the felt wrap is a thing in Fort Earns Four Turns. "Some completely innocuous felt wrap lies here.". description is "Um. Completely innocuous. Right?". eyes-number of felt wrap is 44. eyes-rule of felt wrap is pre-fell-trap rule.

chapter fell trap

the fell trap is a thing. "The fell trap has replaced the felt wrap. [if sco-cellar-bin is true]It looks as though it's been reset since you last visited, if you need to [b]EXAMINE[r] it and get caught again, for whatever reason[else]It looks pretty vicious! It might even catch anyone trying to [b]EXAMINE[r] it[end if].". eyes-number of fell trap is -1.

check examining fell trap:
	if cell urban is unvisited:
		say "You poke the trap, and the floor below collapses. A very brief fall, and you wind up in...";
		change up exit of Cellar Bin to Fort Earns;
		move player to cell urban;
		the rule succeeds;
	say "Thud! But you're a bit more prepared for the drop this time[if extra-turns > 0], and best of all, you don't waste any speed pacing around nervously[end if].";
	move player to Cellar Bin;

part Cell Urban

Cell Urban is a room in universal. printed name is "Cell, Urban". "[one of]THUD! [if extra-turns is 0]You're so anxious about being trapped here, you keep pacing until your speed wears off. [end if]Ugh. You see no way out to start. Perhaps you can complain to the manager, somehow[or]Still stuck. No fair! There must be a way out![stopping][line break]You're getting sick of the noises of the city all around you. You have no clue where they came from.". eyes-number of Cell Urban is 63. eyes-rule of Cell Urban is pre-cellar-bin rule.

part Cellar Bin

Cellar Bin is a room in universal. "The only way out is back up[if gs-up-cellar-bin is true]. You know it's one-way, of course[end if].". eyes-number of Cellar Bin is -1.

check going up in Cellar Bin:
	if gs-up-cellar-bin is false:
		say "As you crawl up a small shaft, you find the outline of a trap door. You flip it up, and -- whew! You're back in [fort earns]. But once you're on your feet, you can't see the trap door any more.";
	else:
		say "You walk up through the vanishing trap door again.";
	now gs-up-cellar-bin is true;

book west branch

part Bowl Ditch

Bowl Ditch is a room in universal. "[if sob acres is visited]You wonder why this place ever intimidated you. There's Sob Acres to the north and the Ur-Branch back east[else if sco-bold-itch is true]Now you've got your bearings, you see a passage north as well as back east[else]Ouch. Oww. You're lying on the ground, embarrassed how you tripped and fell, worried and scared there's no way back. Your injury is probably more psychological than physical, but it's there, and you need to overcome it[end if].". eyes-number of Bowl Ditch is 44. eyes-rule of Bowl Ditch is pre-bold-itch rule.

chapter clay mitt

the clay mitt is a thing. description is "[if sco-claim-it is false]It's not yours, so you can't take it. You guess. Well, as things stand[else]It should protect your hands against all but the fieriest of oven flames[end if].". eyes-number of clay mitt is 52. eyes-rule of clay mitt is pre-claim-it rule.

check taking clay mitt when clay mitt is in Bowl Ditch: say "You don't feel bold enough to. Just taking isn't enough." instead;

part Sob Acres

Sob Acres is a room in universal. printed name is "[if sco-dell-eastern is false]Sob Acres[else]Dell, Eastern[end if]". "[if sco-saw-bakers is false]You feel very sad and lonely here. You're looking for someone, anyone...[else if sco-dell-eastern is false]You see a deli, stern, which you can go inside[else if sco-den-specs is false]This dell still has an air of mystery about it, but there's the deli inside to the west[else if sco-no-date is false]There's the deli to the west, or you can go DOWN into a den[else][deli-post-nodes][end if]. You can always just go back south, of course.". eyes-number of Sob Acres is 36. eyes-rule of Sob Acres is pre-saw-bakers rule.

to say deli-post-nodes:
	if gs-deli-party is false:
		say "With the den taken care of, the deli to the west is doing great business";
	else:
		say "You've had your fun in the deli to the west, so you don't see much to do here";

after printing the locale description for Sob Acres when sco-den-specs is true and gs-den-seen is false:
	reveal-den;

to reveal-den:
	say "Your den specs reveal something you missed before, here. A passage leading down to what must be a den.";
	reveal Groan Odes to down;

check going to deli stern when sco-no-date is true and gs-deli-party is false:
	if gs-deli-party is false:
		say "You stop by and recognize a few of the people who cheered you setting them free from the groan odes and number-sting. It's a great few hours, but you need to get on with your quest. They thank you, and the [owners] thank you for your business.";
		now gs-deli-party is true;
	else:
		say "Everything is great in the deli. You don't need a detour from your adventure.";
	the rule fails;

check going down in Sob Acres when sco-no-date is true: say "Everything's okay there. Time to move on." instead;

part Deli Stern

Deli Stern is a room in universal. printed name is "[if gs-deli-ale-left is true]'Die, Nerviness' Diner Venus[else]Deli, Stern[end if]". "You can only really go out[if sco-dell-eastern is true] (well, east, same thing)[end if] here.". eyes-number of Deli Stern is 47. eyes-rule of Deli Stern is pre-dell-eastern rule.

chapter Fey Loners Fail Owners

the Fey Loners Fail Owners are a plural-named sentient in Deli Stern. Printed name is "fey loners/fail-owners". eyes-number of owners is 1. description is "They look pretty unsocial, which is pretty bad for business owners. Maybe you can TALK to them for what they need.". "Some [owners] [if gs-deli-dell-left is false]trudge around miserably here[else if gs-deli-ale-left is false][one of]look less miserable now[or]stand around, muttering about finding decent bread[stopping][else]beam with pride at their burgeoning business[end if]."

check going in Deli Stern when room gone to is not nowhere:
	if sco-dell-eastern is true, now gs-deli-dell-left is true;
	if sco-dope-ale is true, now gs-deli-ale-left is true;
	if sco-beef-ordering is true, now gs-deli-beef-left is true;

after printing the locale description for deli stern:
	if gs-deli-dell-left is true and gs-deli-dell-return is false:
		now gs-deli-dell-return is true;
		say "The [owners] perk up on seeing you. 'We had a few customers. We might even have prospective repeat customers! But we're running short of bread. We had some of the cheap white generic stuff.'";
	if gs-deli-ale-left is true and gs-deli-ale-return is false:
		now gs-deli-ale-return is true;
		say "The [owners] look a bit happier than before. 'We've had a few more customers. We even rebranded our business! And created some ambience! It advertises some new meals! If you could be our first customer and try it out... we think it's sort of cute...' They point to something they drew on the wall. 'A [toon]! Pretty spiffy, eh?'";
		move toon to Deli Stern;
	if gs-deli-beef-left is true and gs-deli-beef-return is false:
		now gs-deli-beef-return is true;
		say "The [owners] cheer your return. 'Wow! You've really helped up! Your dough was great, but ... with the profits from our latest customers, we bought some entirely new stuff!' They point to yet another sign up on the wall. 'Free samples for everyone! Well, you more than most, for all your help.'";
		move WHEE TRY to Deli Stern;
	continue the action;

chapter Toon Eat Too Neat

the Toon Eat Too Neat is a thing. printed name is "Toon Eat-Too-Neat". "The [toon] [the owners] scribbled is up on the wall here.". description is "[if sco-beef-ordering is true]You figured what it meant. Yay, you[else]The [toon]has three captions, two blurred, one saying (redacted). But the images are clear: a skinny frowning man, the same man ravenously eating, and the same man, belly distended, sitting happily in a recliner. What does it mean? What should it mean? What can it mean?[end if]". eyes-number of Toon is 48. eyes-rule of Toon is pre-beef-ordering rule.

chapter meat

the Me Track Meat Rack is a thing. description is "It's a sample of all different sorts of meats, prepared different ways, all organized for tracking like a good rack should be.". printed name is "me-track-meat rack". eyes-number of meat rack is -1.

chapter pliers

The mope liars mo pliers are a plural-named thing. description is "On the one hand, they're pliers, so they can't be too hard to use. But on the other hand, they were supposed to be kind of special, so you're worried you've overlooked an obvious feature. Gues you can only hope to use them right when the time comes.". printed name is "'Mope, Liars, Mo[']' Pliers". eyes-number of pliers is 1.

chapter WHEE TRY

the WHEE TRY sign is a thing. "A WHEE TRY sign is here--free samples!". description is "[if sco-wheat-rye is false]The [owners] see you looking at the sign, which is covered with different types of bread. 'You won't just get a small free sample. You'll get a lot more... of what? Well, you have to guess[else]You look at the sign again. Man, those were some good free samples[end if].". eyes-number of WHEE TRY is 53. eyes-rule of WHEE TRY is pre-wheat-rye rule.

part groan odes

Groan Odes is a room in universal. printed name is "[if sco-grow-nodes is false]Groan Odes[else]Numb Bursting Number String[end if]". "[if sco-grow-nodes is false]Groan odes ring out everywhere. What would this place be like without them? Are they repressing happy people? Covering something more sinister?[else]The groan odes have ceased, replaced by numbered nodes, from which emanate eerie silence interrupted by occasional menacing beeping and mechanical voice mentioning destruction is IMMINENT and all that sort of thing.[end if]". eyes-number of Groan Odes is 45. eyes-rule of groan odes is pre-grow-nodes rule.

chapter numbered nodes

the numbered nodes are plural-named scenery. "It's a long string of numbered nodes: node one, node two, and so forth. You feel helpless at the thought of disabling it all. Thus, a numb bursting number string.". eyes-number of nodes is 24. eyes-rule of nodes is pre-no-date rule.

chapter hell pin

the help in hell pin is a thing. printed name is "help-in-hell pin". description is "It's a bit corny, with two angels imposed on a smiley face. But it was given in good spirit, and [if throne is visited]it helped you get to [here-in of throne][else]might help somewhere[end if].". eyes-number of hell pin is 1.

part Turbo Tours

Turbo Tours is a room in universal. printed name is "Turbo Tours[if sco-tour-boaters is true] (now with tour boaters)[end if]". "You can go back west, but there are also tours that cross water to the south--or go far beyond.". eyes-number of Turbo Tours is -47. eyes-rule of Turbo Tours is pre-tour-boaters rule.

check going south to Farm Isles:
	say "[one of]Your prime oar really is prime! You effortlessly navigate your way south[or]Your prime oar holds up nicely as you steer the stark raft back south[stopping].";
	move stark raft to Farm Isles;
	move prime oar to Farm Isles;

chapter star craft

the star craft is a thing in Turbo Tours. "A huge star craft rests here. No way you'll be able to afford it -- something more modest, perhaps.". description is "Impressive but way out of your price range.". eyes-number of star craft is 54. eyes-rule of star craft is pre-stark-raft rule.

chapter stark raft

the stark raft is a thing. "The stark raft [if farm isles is unvisited]waits here, for you to see what's south[else if player is in farm isles]can take you back north to [tours][else if sco-barn-open is true]sits here. It serve you well, but you don't need to go back across the water[else]can lead you back to the Farm Isles[end if].". description is "It's plain, but sturdy enough, you think, and your prime oar will help steer it[if far miles farm isles is visited] back south[end if].". eyes-number of stark raft is -1.

part Far Miles Farm Isles

Far Miles Farm Isles is a room in universal. eyes-number of Farm Isles is 1.

check going north in farm isles: raft-tours;

chapter bar nopin

the Bar Nopin is a thing in Far Miles. printed name of Bar Nopin is "Bar, Nopin[']". eyes-number of bar nopin is 44. eyes-rule of bar nopin is pre-barn-open rule.

chapter fine drinks

the fine drinks ad is a thing in Far Miles. eyes-number of fine drinks ad is 45. eyes-rule of fine drinks is pre-find-rinks rule.

chapter egg of a guv

the egg of a guv is a thing. description is "It's only one egg, but boy is it impressive! The barn (open) really did you a favor, but all the same, you'll need more than one for your little shopping list.". eyes-number of egg of a guv is 1.

part Berries Pond

Berries Pond is a room in universal. eyes-number of Berries Pond is 47. eyes-rule of Berries Pond is pre-bear-respond rule.

check going to berries pond when sco-bear-respond is true: say "That would be greedy." instead;

book south area

after printing the locale description when (player is in scribe room or player is in dam pink or player is in dust which) and gs-nn-noted is false:
	now gs-nn-noted is true;
	say "[i][bracket][b]NOTE[r][i]: you can use NN to go back to the ur-branch from here or (spoiler alert) any other room like this.[close bracket][i][line break]";
	continue the action;

part Tube Rod

Tube Rod is an ordroom in universal. eyes-number of Tube Rod is 35. eyes-rule of Tube Rod is pre-too-broad rule.

part Too Dark Tude Ark

Too Dark Tude Ark is an ordroom in universal. printed name is "[if sco-ho-langour is true]'Ugh?! Lo, a Glow'[else]Too-Dark Tude Ark[end if]". eyes-number of Too Dark Tude Ark is 1.

the whole anger is a thing in Tude Ark. "Whole anger swirls around here.". description is "How can one describe anger? It's there, and it's tough to shake.". eyes-number of whole anger is 7. eyes-rule of whole anger is pre-ho-langour rule.

part Sage Oaks

Sage Oaks is an ordroom in universal. eyes-number of Sage Oaks is 35. eyes-rule of Sage Oaks is pre-say-jokes rule.

sageoakscen is a sentient in Sage Oaks. "Sage oaks stand here, [if sco-say-jokes is false]glaring at your unworthy self[else]almost nodding with respect for you[end if].". eyes-number of sageoakscen is 35. eyes-rule of sageoakscen is pre-say-jokes rule.

understand "sage/oaks" and "sage oaks" as sageoakscen.

check going south in Sage Oaks when sco-gas-pouch is false:
	say "[one of]As you go south, you hear a tingling that makes you gasp 'ouch.' It grows as you continue, and you have to turn back. What's up with that? They said they'd make a passage south.[paragraph break]The sage oaks laugh a bit. 'Just a bit of revenge for those painful joke,' they say, 'nothing permanent. We never said we'd give painless passage south unless ... well, what you need to do, it will be for your own good in the long run.'[paragraph break]Now what did they mean by that?[or]Again, you try to go south, and again you gasp 'ouch,' and the sage oaks chuckle. This is getting a bit tiresome. What to do?[stopping]" instead;

chapter gas pouch

the gas pouch is a thing. "It's a pouch that once held gas, currently full/empty.". eyes-number of gas pouch is -1.

part Dam Pink

Dam Pink is a room in universal. printed name is "Dam, Pink". "You can only go back north.". eyes-number of Dam Pink is 43. eyes-rule of Dam Pink is pre-damp-ink rule.

part Scribe Room

Scribe Room is a room in universal. "You can only go back north.". eyes-number of Scribe Room is 45. eyes-rule of Scribe Room is pre-scry-broom rule.

after printing the locale description for scribe room when player has broom and sco-pro-sweeping is true:
	say "You hand the broom back to the scribes. They're very impressed you can do ... that sort of work. They pull out something else: a bell (trusted). It's big and impressive, but it's a bit tarnished, which each of them mentions in an offhand way, just in case you know anyone who might be able to help. Or you're good at other things besides sweeping. You seem multi-talented, they say.";
	moot broom;
	move bell trusted to Scribe Room.

chapter scribes

the scribes are sentients in Scribe Room. "[one of]Unsurprisingly,[or]Those[stopping] scribes continue to do their scribing thing and occasionally bustle about to assist others' scribing.". eyes-number of scribes is 1.

chapter broom

the broom is a thing. description is "It's not a magical sort of broom, which may be all for the best. But it's not broken or run-down, either. The scribes weren't big on extreme cleanliness.[paragraph break][if sco-pro-sweeping is false]The scribes asked you to return it once you were done with it[else]Maybe you should return it to the scribes, as they asked, now you're done with it[end if].". eyes-number of broom is 1.

chapter bell trusted

the bell trusted is a thing. "The bell (trusted) the scribes showed you now sits off to the side.". description is "It looks like it's seen a bit of use and is not as bright as it could be. The scribes may have trusted you to see it, but they may also have hoped you were the sort to make things look nicer, since you traded for the broom.". eyes-number of bell trusted is 46. eyes-rule of bell trusted is pre-belt-rusted rule.

chapter belt rusted

the belt rusted is a thing. description is "It might look quite nice if it were spruced up a bit.". eyes-number of belt rusted is -1.

part Dust Which Does Twitch

Dust Which Does Twitch is a room in universal. printed name is "[if sco-pro-sweeping is false]Dust Which Does Twitch[else]Teal Eaves[end if]". "[if sco-pro-sweeping is false]You can only go (and see) back north[else]You can see where you are now. Apparently a place called Teal Eaves. It's teal on the outside and inside[end if].". eyes-number of Dust Which is 1.

chapter prose weeping

the prose weeping is a thing in Dust Which Does Twitch. "The sound of prose, weeping, rises from all the dustiness.". eyes-number of prose weeping is 38. eyes-rule of prose weeping is pre-pro-sweeping rule.

chapter coal drum

the coal drum is a thing. description is "Plenty dirty. Perhaps there is something beneath the coal, but you might have to figure what, before digging.". eyes-number of coal drum is 43. eyes-rule of coal drum is pre-cold-rum rule.

chapter cold rum

the cold rum is a thing. indefinite article of cold rum is "some". description is "It seems pretty classy. Or it seems like people who drink it can fool themselves it's classy. Good enough.". eyes-number of cold rum is 1.

chapter tea leaves

some tea leaves are a thing.  description is "All sorts. They smell different and, you imagine, will taste different.". eyes-number of tea leaves is -1.

book up area

part Throne Ow Throw Now

Throne Ow Throw Now is a room in universal. printed name is "[if sco-use-it is true]Final (?) and Fine Land[else]Throne Ow-Throw-Now[end if]". eyes-number of Throne Ow Throw Now is 1.

chapter thronescen

thronescen is a privately-named thing in Throne Ow Throw Now. printed name is "the throne". understand "throne" as thronescen. eyes-number of thronescen is 32. eyes-rule of thronescen is pre-use-it rule.

chapter Life Roots

the Life Roots are a thing. "Life Roots have been revealed from where the throne was. And yet, they seem a bit artificial. They aren't that impressive, and maybe they're hiding something that proves them less than they claim to be.". eyes-number of Life Roots is 36. eyes-rule of Life Roots is pre-lie-fruits rule.

chapter assortment

there is a thing called the fruit and veggie assortment. description is "Just about everything you could want.". eyes-number of assortment is -1.

volume unsorted

book unclaimed things

chapter bread

there is a thing called wheat and rye bread. eyes-number of bread is -1.

volume going out

the can't exit when not inside anything rule is not listed in any rulebook.

definition: a direction (called v) is viable:
	if the room v of location of player is nowhere, no;
	yes;

check exiting: try going outside instead;

check going outside:
	unless the room gone to is nowhere, continue the action;
	let v be number of viable directions;
	if v > 1, say "Ambiguous. Two ways to go out." instead;
	let j be a random viable direction;
	if j is not outside:
		say "Mapping outside to [j].";
		try going j instead;

volume regular verbs

book inventory

the UT specific inventory rule is listed instead of the print standard inventory rule in the carry out taking inventory rulebook.

carry out taking inventory (this is the UT specific inventory rule):
	now all things carried by player are marked for listing;
	now all startthings are not marked for listing;
	if number of marked for listing things is 0:
		say "You're empty-handed, except for what you started with.[paragraph break]";
	else:
		say "'Good! Some goods, umm...'[line break]";
	if player has tin, now pie crust is not marked for listing;
	now dense pecs are unmarked for listing;
	now rope ladder is unmarked for listing;
	list the contents of the player, with newlines, indented, including contents, listing marked items only, giving inventory information, with extra indentation;
	if player has dense pecs, say "[line break]You've got those dense pecs[if sco-den-specs is true], but you probably got what you needed[else], which may be useful in some other weird way[end if].";
	if player has rope ladder, say "[line break]You've got that rope ladder, too. ";
	say "[line break]You're still carrying [the list of startthings carried by player][tour-ad-blather].";
	the rule succeeds;

after printing the name of gray tin when taking inventory:
	if sco-pie-crust is false:
		say " (empty)";
	else:
		say " (full of pie crust)";

to say tour-ad-blather:
	if player does not have tour ad, continue the action;
	say ". The [tour ad][if tour ad is examined] didn't seem too important, though, so you can drop it[else] seems relatively lightweight. You can probably examine and then drop it[end if]";

book drop/take

check taking: if noun is not a hintthing, say "You never need to take anything explicitly in [this-game], though you have the option of taking two hint items. However, trying to take an item may give you a hint as to what you really need to do to acquire or use it." instead;

check drop2ing: say "You never need to drop anything explicitly in [this-game]. Often, when you're done with something, it will be consumed. Also, there is no inventory limit." instead;

volume semi-regular/often used verbs

book eyeing

check eyeing broom: say "The eyes show nothing. Perhaps it's better the broom isn't magical. You saw [i]Fantasia[r]. It could probably help you clean up somewhere, though." instead;

book eating

check noteating:
	if noun is Terra Blade, say "You're doing great! No reason to commit Seppuku." instead;
	if noun is sly size slice eyes, say "[this-game] is an IFComp entry, not an EctoComp entry." instead;
	if noun is a sentient, say "Canny? Can nibble? Canny? Bull..." instead;
	if noun is blah string or noun is felt, say "Well, full of fiber, I guess..." instead;
	if noun is an eatworthy ingredient, say "Some host you are. Wait until the meal is started." instead;
	if noun is not eatworthy ingredient, say "Ugh ... needs preparation." instead;
	say "That's probably not edible." instead;

book talk (redefined in Oronym Core)

check ting:
	if noun is Trike West, say "You say, meek, a 'Me? [']Kay!'" instead;
	if noun is meh spot, say "It may make you say 'meh' a lot, but it's not going to say anything back." instead;
	if noun is forest team, say "They generally talk you down and continue to find ways to knock you." instead;
	if player is in beach and freddie is in beach:
		if noun is pun tweaker or noun is Sir Freddie:
			say "You don't have the skills to talk out a detente." instead;
	if noun is pun tweaker, say "The pun tweaker throws a ton of puns you've heard before at you and feels very clever for this." instead;
	if noun is sageoakscen, say "[if sco-say-jokes is false]The oaks just don't seem to be bothered with regular talk[else]You wonder if you should say 'Forge, oaks, for jokes,' or ask for kludge-oaks that might clue jokes. But the oaks don't seem interested in talking[end if]." instead;
	if noun is Sir Freddie, say "'Ho, pawn! Hope on!'" instead;
	if noun is not a sentient, say "No response. You should usually talk to living things, or things that can respond as if they were living." instead;
	say "An awkward silence ensues, mostly brought about by how ... I forgot to code something. Please let me know or file a bug report!" instead;

volume meta-verbs

book about

carry out abouting:
	say "[this-game] was released for IFComp 2025. It reuses a lot of code from [wp], my IFComp 2024 entry. It uses the same sort of progress mechanic, but the two are different in nature.";
	say "[line break]As in 2024, I had bigger projects that didn't make it, but fortunately (well, for me,) I found the title early on and built from there.";
	say "[line break]Like most of my games, [this-game] rates merciful on the Zarfian cruelty scale. However, in this case, I want the puzzles to be more merciful in terms of general difficulty on the player's psyche than usual."

report abouting:
	if player is in house well:
		say "Once you figure what to say to the lawyers (which is a short phrase with short words,) you will have the opportunity to find a small document with silly and fun observations. (This line will change once you get there, too.)";
	else if loose intro is moot:
		say "You already read the loose intro that goes into detail about things.";
	else if player has loose intro:
		say "You can [if loose intro is examined]re-[end if]read the loose intro to get more creative details on [this-game].";
	else:
		say "The lucent row [here-in of Mine Ooh] contains, if you look at it right, something with more subjective details and opinions. It's a bonus point, but it might help prepare you for the rest of the game.";
	continue the action;

book credits

carry out creditsing:
	say "Thanks to my testers.";
	say "[line break]The cover art is my fault, and my fault alone.";
	say "[line break][b]GENERAL THANKS[r]:[paragraph break]";
	say "Thanks to everyone past and future involved in the administration of IFComp.";
	say "Thanks to the I7 board on Intfiction.org for their help, as well as the people in the general topics and the spoilers topic as we discussed our plans.";

book verbs

check verbsing when player is in house:
	say "Most point-scoring commands, including the one to get you out of this house, are two words long. They are clued by something in the environment. The two you must find now are relatively simple and short.";
	say "[line break]Past the house, [this-game] has a limited parser, mostly allowing the various directions, INVENTORY, THINK, and SCORE.";
	the rule succeeds;

carry out verbsing:
	say "[this-game] uses a reduced parser.";

book versions

carry out versioning:
	say "Release 1 is targeted for August 28, 2025, for IFComp.";

book swearing

report swearing obscenely for the first time:
	say "[i][bracket]There's no optional section for this, as there was in [b]Why Pout[r][i]. Sorry.[close bracket][r][line break]";
	continue the action;

book xyzzying

carry out xyzzying: say "A hollow voice booms 'Sequel? Seek well? See? QUELL!'[paragraph break]But don't worry, it's just hollow, period." instead;

volume ending tweak(s)

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see points [b]MISSED[r]" 	true	"missed"	track missed points rule	--

this is the track missed points rule:
	if sco-loose-intro is false, say "You could've made a [b]LOOSE INTRO[r] fall from the lucent row in [mine].";
	if sco-meh-skit is false, say "You could've performed a [b]MEH SKIT[r] once you uncovered the mess pot/kit.";
	if sco-pea-pod is false, say "You could've discovered a [b]PEA POD[r] in Pea Stalks when you wondered if you could peep odd things, for a bit more food.";
	do nothing;

chapter final real ending

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
--	true	"ace two"	poker cheat rule	--

this is the poker cheat rule:
	if gs-found-real-win is false:
		say "Well, your friends didn't believe your whole tale of how you got here, and how you provided this nice meal, so they'd never believe you could cheat like this.[paragraph break]Of course, you're not playing for high stakes, but it's the principle of the thing. Next time when you all go out to eat, it's your treat. Your friends applaud your generosity, but you say it wa nothing. It really was, too.";
	else:
		say "You already cheated to win, but you did so because it was the right thing to do. You have everything you want. Don't get greedy. What would [ara] say?";
	now gs-found-real-win is true;

The hack to say one word right rule is listed before the standard respond to final question rule in for handling the final question.

This is the hack to say one word right rule:
	if the player's command includes "ace" or the player's command includes "two":
		if gs-found-real-win is true:
			say "An interesting idea.";
		else:
			say "There is/was no other way to cheat.";
		the rule succeeds;

volume misc map

index map with mine ooh mapped west of house well how swell.
index map with bore dread mapped south of mine ooh.
index map with Joy Nadir mapped east of Bore Dread.
index map with ur branch mapped southwest of bore dread.

index map with Blah Copse mapped north of ur branch.
index map with Morph Lairs mapped north of Blah Copse.

index map with sore dark mapped west of Morph Lairs.

index map with Beach Ill mapped east of ur branch.
index map with Pile Up Isle mapped east of Beach Ill.

index map with Pea Stalks mapped south of Pile Up Isle.

index map with Dome Aching mapped southeast of ur branch.
index map with inner nest mapped southeast of Dome Aching.

index map with Fort Earns Four Turns mapped southwest of Ur Branch.
index map with Cellar Bin mapped south of Berries Pond.
index map with Cell Urban mapped west of Cellar Bin.

index map with Bowl Ditch mapped west of Ur Branch.
index map with Sob Acres mapped north of Bowl Ditch.
index map with Deli Stern mapped west of Sob Acres.
index map with Groan Odes mapped north of Deli Stern.

index map with Sage Oaks mapped south of Dome Aching.
index map with Too Dark Tude Ark mapped west of Sage Oaks.
index map with Tube Rod mapped west of Too Dark Tude Ark.

index map with Dam Pink mapped south of Tube Rod.
index map with Scribe Room mapped south of Too Dark Tude Ark.
index map with Dust Which mapped south of Sage Oaks.

index map with Turbo Tours mapped west of Bowl Ditch.
index map with Farm Isles mapped south of Turbo Tours.
index map with Berries Pond mapped south of Farm Isles.

index map with Throne Ow mapped south of Inner Nest.
