"Us Too" by Hugh Morris

volume includes

the release number is 1.

release along with a website.

release along with cover art.

release along with the "Parchment" interpreter.

use memory economy.

section outside stuff

include Conditional Undo by Jesse McGrew.

section general

include Punctuation Stripper by Andrew Schultz.

include Oops Zapper by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

include Old School Verb Total Carnage by Andrew Schultz.

include Standard Helping Metaverbs by Andrew Schultz.

include Versioning and Extensions Tweak by Andrew Schultz.

section series specific

include Oronym Core by Andrew Schultz.

section game specific

include Us Too Globals by Andrew Schultz.

include Us Too Definitions by Andrew Schultz.

include Us Too Tables by Andrew Schultz.

include Us Too Mistakes by Andrew Schultz.

include Us Too I6 Replacements by Andrew Schultz.

section beta testing - not for release

include Us Too Beta Testing by Andrew Schultz.

section testing headings - not for release

include Us Too Tests by Andrew Schultz.

volume intro

when play begins:
	now left hand status line is "[location of player]";
	say "The old mine is yours, now. You were left it in a will by a relative you barely remember. [ara]. She gave you a weird little logic puzzle. 'Tricky,' you mused, and she seemed to smile. But you did not solve it until the family gathering was over. She had already gotten in her car, and you tried to yell as she drove away. Your family told you not to bug her, which was funny, because everyone seemed to be buttering her up about how rich she was.";
	say "[line break]You explained this to your parents, who got really cheesed off you didn't figure it sooner to impress her. That could've been their ticket! Uh, they meant, yours." ;
	say "[line break][ara] held on longer than anyone thought. Your parents went up to get a good word with her, not bringing you, of course, after your flub. But she remained secretive about her will.";
	wfas;
	say "Soon after she died, her relatives received envelopes in the mail. They were each from the same address, but the actual location was a bit different. Your parents and siblings? [hwhs]. You? [hohs].";
	say "[line break]You were one of the few to get [hohs]. It seemed like a terrible sign, but as the will was read, the [hwhs] people roared furiously as [ara]'s will labeled them 'too naggy' or 'too flattering.' She'd kept special track of charities people enjoyed, or said they enjoyed, and donated a lot to their charities. But nobody left empty-handed. All the living relatives there had already had travel expenses paid and would get $1000 more if they sarcastically said 'Well, how swell.' And promptly left. Most said it, with passion.";
	say "[line break]You were ready to say so, for your own $1000. And it felt weird, being one of three people left, eventually.";
	say "[line break]'You impressed her,' one of the lawyers tells you, waiting for the response. 'But you need to impress us, now. No babbling. She was never big on words. Especially big words. Fail, and you only get $10000. You have as long as you need. We have been comped well for our time.'";
	say "You fumble nervously with your envelope. What [i]could[r] they be talking about? What do you need to say, here?";
	wfas;

book you

volume introductory

part House Well So Swell

House Well How Swell is a room in intro. printed name is "House Well-How-Swell". "The lawyers look at you expectantly. You fiddle with your envelope. You hope you haven't come all this way for nothing!". eyes-number of House Well How Swell is 1.

start-exam-words is a list of indexed texts that varies. start-exam-words is { "envelope", "help", "hint", "i", "inventory", "read", "think" }.

to decide whether skippable-basic-meta: (- checkmeta() -)

Include (-

[ checkmeta i;
  if (parse->1 == 0) rfalse;
  i = parse-->1;

  if (+in-beta+) {
    if ((i=='j//') || (i=='jsouth//')) {
      rtrue;
    }
  }

  if (+debug-state+) {
    if ((i=='test//') || (i=='gonear//')) {
      rtrue;
    }
  }

  if ((i=='about//') || (i=='credit//') || (i=='credits//') || (i=='ext//') || (i=='exts//') || (i=='l') || (i=='look//') || (i=='quit//')  || (i=='restart//')  || (i=='restore//')  || (i=='save//')  || (i=='transcript//') || (i=='verb//') || (i=='verbs//') || (i=='version//') || (i=='versions//')) {
    rtrue;
  }

  rfalse;

];

-).

after reading a command when player is in House Well How Swell:
	if skippable-basic-meta, continue the action;
	let w1 be word number 1 in the player's command;
	if w1 is "how" and word number 2 in the player's command is "so":
		say "One lawyer stands up and snaps their fingers. 'There you go! I knew you'd get it.";
		increment core-score;
		follow the score and thinking changes rule;
		say "[line break]'Let's see, you're ... oh, you're [']Trike['] West. The kid who ran after her with the solution to her little puzzle. Uh, were. She really was impressed, but she was just so sick of being fawned over, she didn't want to get out of her car again. She knew from the way some of her worse relatives bad-mouthed you, you were more than all right. She owned this old mine and even had a small trust fund to pay taxes. Though for you, it's sort of a new mine... and just checking, but you know what to say?' You pause.";
		wfas;
		say "Then 'MY new mine?! Ooh...'[paragraph break]'Bingo! Again! But she just wants to make sure you're worthy, so you'll have to visit there.'";
		say "[line break]You're a bit worried. You can't just up and leave your job like that. What if it's a scam? The lawyers assure you the mine is not going anywhere. You've built up vacation time from work. You call some trusted friends. 'You're getting shafted,' a few laugh. Enough don't.";
		wfas;
		say "[line break]You meet up with the lawyers again. They inform you you may need to carry a lot of stuff around. They offer you an odd-looking item. '[ara] figured you would need this. It's an [ugh].' The lawyers then squabble over whether the 'A' is a short or long a. They argue over how important the pronunciation is. 'It can go either way,' one says, trying to be a peacemaker. 'At least, for other phrases. Anyway, before we forget, she wrote a [jot], too. Just introductory stuff.'";
		say "[line break]The squabbling dies down, after some debate over whether or not you can just pronounce a word slightly differently to suit your needs. They all have to admit they've done it to prove a point.[paragraph break]'Oh ... one other thing? Invite your friends when you have everything on [ara]'s list. And, of course, invite ...'";
		wfas;
		say "'Us too!' the lawyers yell together, in unison.";
		say "[line break]You check your belongings. The [ugh], to carry stuff. The [jot], for early help. You set aside vacation time... before the flight, the lawyers call you and say [ara] has made other provisions, if you need them. They tell you if you just look at yourself and be yourself, you'll figure what to do. You realize they're the sort of good lawyers that help people cover all the bases. They're not jerks who find loopholes to make rich people richer. They didn't even judge your nickname, 'Trike' West.";
		wfas;
		move player to My New Mine Ooh;
		reject the player's command;
	repeat with yy running through start-exam-words:
		if the player's command matches the text yy:
			say "You glance at your envelope, pretty much all you have on you, [one of][or]once again [stopping]worried you might be cheating. But you can't imagine what other clue you have.[paragraph break]The lawyers [one of]still [or][stopping]look nonchalant, fortunately. It says [hohs], contrasting [hwhs] on most of other guests['] invites.";
			now gs-envelope is true;
			if starter-counter > 3, now starter-counter is 3;
			reject the player's command;
	let nwc be number of words in the player's command;
	if nwc > 2:
		say "The lawyers yawn. All those words! You really are talking too much[if first-command-points > 0], though there MAY have been something in what you said...[else]![end if]";
	else if first-command-points > 0:
		if first-command-points is 2:
			say "The lawyers make little flip-it-around motions with their hands.";
		else:
			say "The lawyers['] ears seem to perk up for a second. You must be on the right track!";
	else if the number of characters in the player's command > 8:
		say "One of the lawyers casually remarks [ara] was never big on unnecessarily long words.";
	else if nwc < 2:
		say "One of the lawyers tells you to speak up a little, there, and don't cut yourself off after just one word.";
	else if the player's command includes "lawyers" or the player's command includes "lawyer":
		say "The lawyers sit, stone-faced. You will get no clues from them.";
	else if the player's command includes "me" or the player's command includes "myself" or the player's command includes "trike" or the player's command includes "west":
		try examining the player;
	else:
		say "The lawyers shake their head slightly, though you sense that's the worst you'll get from them.";
	increment starter-counter;
	if starter-counter is 5, follow the explain the house rule;
	reject the player's command;

the punctuation-munge rule is listed first in the after reading a command rulebook.

after printing the locale description for house when house is unvisited:
	follow the explain the house rule;
	continue the action;

this is the explain the house rule:
	say "[i][bracket][b][one of]NOTE[or]REMINDER[stopping][r][i]: standard actions beyond [b]EXAMINE[r][i] or [b]INVENTORY[r][i] aren't very useful here. You have to figure what to say. But it's not very long. Remember, you have that envelope on you, which has a clue. You can also try [b]ABOUT[r][i] or [b]VERBS[r][i] for an introduction, though they won't help with the puzzle.[close bracket][line break]";
	now starter-counter is 0;
	now gs-explained-house is true;
	continue the action;

rule for printing a parser error when the latest parser error is the I Beg Your Pardon error and player is in House Well:
	say "You fumble nervously with your envelope and reflect on what the lawyers might want to hear. Dare you sneak [if gs-envelope is true]another[else]a[end if] peak at it?";
	the rule succeeds;

part Trike West (you)

Trike West is a person in House Well How Swell. the player is Trike West. description of Trike West is "You are 'Trike' West. People (well, except [ara], even when provoked) always said it was a weird nickname, but it was one you embraced, after being about the only kid in your neighborhood without a Big Wheel and then almost riding it into the school on the first day of first grade, then holding out on riding a real bicycle. It persisted even after you rode your bike as other kids got their drivers['] licenses.[paragraph break]'What the heck would you want to be named like that for? It stands out, yeah, but not in a good way.'[paragraph break][if player is in house]Right now, you've got just that envelope on you, trying to figure from it (and from the location) what the lawyers want from you[else if sco-try-quest is true]You've found something special about your name, though[else]Maybe finding something special about your name would give a small, if non-critical, boost[end if].". eyes-number of Trike West is 35. eyes-rule of Trike West is pre-try-quest rule.

report examining trike when player has dense pecs:
	say "You've also grown some dense pecs from hauling items around and navigating manual water vessels. But you know it's your mind that got you this far, and it's your mind that will see you through.";
	continue the action;

does the player mean examining Trike when player has meat rack: it is likely.

part "item using"

Aight Amusing Item Using is a proper-named startthing. description of Aight is "It's a list of all the things [ara] said you need to provide a feast.". printed name of Aight is "[i]A'ight, Amusing Item Using[r]". eyes-number of Aight Amusing Item Using is 66. eyes-rule of aight is pre-summon-cheese rule.

check drop2ing aight: say "[if sco-summon-cheese is true]You could still win [this-game] without [aight], now you summoned the cheese. However[else][aight] clues a specific item to find. Also[end if], it's useful for general organization, so you need to keep it, or it'd be hard to keep track of what you need." instead;

to say aight-count: say "You have [nds in words] of [number of necessary stewitems in words] items"

to say new-aight-bold: if nds > last-nds-x, say " ([b]BOLD[r]ing stuff found since last time)";

report examining Aight Amusing:
	let gotany be whether or not nds > 0;
	let missedany be whether or not nds < number of necessary stewitems;
	if gotany is false:
		say "You haven't found any yet, so I didn't sort them into have and don't have.[line break]";
	else if missedany is false:
		say "You have everything you need, but why not list it for fun?[line break]";
	else:
		say "[aight-count]. ";
		say "[one of]While things won't magically switch order in the list, I've organized them into what you have at the top and what you don't at the bottom[new-aight-bold].[or]Sorted into have/have not[new-aight-bold]:[line break][stopping]";
	say "[line break]";
	if nds > 0, say "HAVE:[line break]";
	let mentioned-alcohol be false;
	repeat with SI running through discovered necessary stewitems:
		if SI is pie crust, next;
		if SI is not listed-yet, say "[b]";
		if SI is alcoholic:
			if mentioned-alcohol is true, next;
			say "-- [if sco-malt-hour is true]enough alcohol left over ([the list of alcoholic stewitems])[else if number of discovered alcoholic stewitems is 2]two types of alcohol, almost too much quantity ([the list of alcoholic stewitems])[else]some alcohol, but not enough variety: [the list of discovered alcoholic stewitems][end if]";
			now mentioned-alcohol is true;
		else:
			say "-- [invtext of SI]";
		if SI is alcoholic:
			say "[if booze-score > booze-listed-yet-score] (new)[end if][r]";
		else:
			say "[if SI is not listed-yet] (new)[end if][r]";
		if SI is not listed-yet:
			if SI is alcoholic and booze-score is 2:
				now cold rum is listed-yet;
				now dope ale is listed-yet;
			else:
				now SI is listed-yet;
		say "[line break]";
	now mentioned-alcohol is false;
	if gotany is true and missedany is true, say "[line break]";
	if number of necessary not discovered stewitems > 0, say "NEED:[line break]";
	repeat with SI running through necessary not discovered stewitems:
		if SI is pie crust, next;
		if SI is alcoholic and booze-score < 2:
			if mentioned-alcohol is false:
				say  "-- [if booze-score is 0]a variety of alcoholic drinks[else]another type of alcohol[end if][line break]";
			now mentioned-alcohol is true;
			next;
		say "-- [invtext of SI][line break]";
	tip-herb-use;
	if number of discovered not necessary stewitems > 0, say "[line break]You went above and beyond and found [the list of discovered not necessary stewitems].";
	say "[line break]At the bottom, the lawyers have written 'There's a specific point to this list. Don't forget to invite [b]US TOO[r] once you've gotten all the items and figured that point!'";
	now last-nds-x is nds;
	continue the action;

Trike West carries Aight Amusing Item Using.

check examining aight for the first time:
	say "On inspection, you realize [aight] is sort of a recipe, full of food and food preparation items.";

to default-x-to-aight:
	say "For future reference, [b]X[r] will default to [using] in the future. It will be about as helpful to you as [b]I[r]/[b]INVENTORY[r].";
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

to tip-herb-use:
	if player has herbs and sco-summer-bay is false, say "[line break]The herbs ('some herb, eh?') still seem like they could open passage somewhere, if you're careful.";

part Aw Lug All Ugh

the Aw Lug All Ugh is a thing. printed name is "Aw-Lug-All-Ugh". description is "It's a thing your aunt gave you--well, willed you--which you don't know where it's from[one of]. It reminds you of that 'Hey, we're going to eat pizza' song[or][stopping].".

check drop2ing ugh: say "While it is, indeed, a thing your aunt gave you, you don't need to drop and recover it to circumvent inventory limits." instead;

report examining Ugh:
	say "It looks really sturdy--[if core-score < 20]it can hold a lot, you bet[else if core-score < 40]it's held up well for the adventure[else if assortment is off-stage]you're slightly worried it will burst[else]it's pretty much full. Unless you have missed a detail, you might want to finish things up[here-in of mine][end if].". Trike West carries the Ugh. eyes-number of Ugh is -1.

chapter cheese

the cheese is an eatworthy stewitem. description is "All sorts of cheese, really. Everyone is sure to like one of the types. They're probably sure to hate another, what with some types of cheese being really really polarizing, but that just leaves more for everyone else.". eyes-number of cheese is 1. indefinite article of cheese is "some".

invtext of cheese is "some munchies ([if sco-summon-cheese is false]the kind is not specified. What's up with that?[run paragraph on][else][b]SUMMON[r]ed the [b]CHEESE[end if][if cheese is listed-yet][r][end if])".

chapter dense pecs / den specs

dense pecs are a plural-named thing. description is "You admire your well-earned, newfound physical fitness[if sco-den-specs is true], though perhaps you can swap it for something more useful, since this quest has been relatively nonviolent[else], as well as your prowess converting it into something more useful[end if].". eyes-number of dense pecs is 35. eyes-rule of dense pecs is pre-den-specs rule. printed name of dense pecs is "your dense pecs".

the den specs are a plural-named thing. description is "You have no idea how cool or uncool they make you look. Probably not as cool as your dense pecs[if gs-den-seen is true]. But it sure was cool to find a den below [sob acres][end if].". eyes-number of den specs is -1.

check wearing den specs: say "[if gs-den-seen is true]No need. You found where the den was.[else][one of]Whoah! They make everything look a bit weird. [or][stopping]You'll use them to have a look around when you visit somewhere new.[end if]" instead;

part urge ought er jot

the urge ought er jot is a startthing. eyes-number of er jot is 1.

check drop2ing urge ought er jot:
	if er jot is not examined:
		say "You haven't examined [the jot] yet, though you don't need to, to win the game. Drop it anyway?";
		unless the player no-consents:
			say "Next time, you'll drop it without this nag.";
			the rule succeeds;
	moot jot;
	say "[crumple-it].";
	the rule succeeds;

to say crumple-it: say "You actually just crumple it up and put it in your pocket, in case you need to start a fire later to, I don't know, cook stuff. Plus, littering isn't cool![paragraph break][The noun] is out of your conscious inventory, now"

Trike West carries the urge ought er jot. printed name of er jot is "Urge-Ought-[']Er Jot".

description of Jot is "[one of]It's a[or]You reread the[stopping] note from [ara]: 'The items on the row/ledge may help when needed. No shame using them everywhere, and I won't be offended if you find them useless or even drop them. Or drop this, now you've read it. One less thing to worry about in your inventory.[paragraph break]'You can change the row/ledge itself if you want, but you don't need to. Some subjective information about your surroudings. Maybe with experience you'll have an a-ha moment, and you'll see this whole area in a new light.[paragraph break]'You could say it's a welcome of sorts.'". eyes-number of jot is 1.

report examining jot:
	if gs-jot-row-ledge is false and lucent row is in mine:
		say "Wait? Row/ledge? You only [if player is in mine]see[else]saw[end if] a row ... hmm, small mystery, here.";
		now gs-jot-row-ledge is true;
	continue the action;

volume main rooms

book introduction

part my new mine ooh

after printing the locale description for Mine Ooh when core-score is core-max - 1:
	say "Okay, so what do you DO with all these ingredients? What can they make? Well, the ones that are still a bit raw... perhaps you have overlooked a clue somewhere in [ara]'s original documents. A common, innocuous phrase...";
	continue the action;

My New Mine Ooh is a room in intro. printed name is "My New Mine, Ooh!". description is "You're down in your new mine, with a passage up back to the great wide world[if sco-be-strong is true]. You've cleared the way--you can't be sure of the direction, as the path twists a bit[else if sco-a-drawer is false]. Fortunately it's more 'Ooh' than 'Eew.' It could go either way, you realize. But you're still finding your bearings and purpose. You feel a bit blown away being given such a big mine, and you'd feel silly wandering purposelessly[end if].". eyes-number of Mine Ooh is 1.

After choosing notable locale objects when player is in Mine Ooh:
	if war pawn is in mine ooh, set locale priority of war pawn to 0;
	if slice eyes are in mine ooh, set locale priority of slice eyes to 0;

after examining lucent row:
	now ledge is examined;
	continue the action;

check thinking in Mine Ooh when sco-a-drawer is false:
	say "You're a bit lost, but you track what you know:[paragraph break]";
	say "--you went to [hwhs], called [hohs], and your response 'How so?' impressed the lawyers.";
	say "--[the jot] and [using], given to you at the start, are ... oddly named, to say the least.";
	say "--the lawyers reacted positively to 'My new mine, ooh!'";
	if sco-try-quest is true:
		say "--you may've figured why [ara] liked your name, Trike West ('try quest.')";
	else:
		say "--there may be something about your name, Trike West, which can help you with other things.";
	if doable-hinted is 1, say "[line break]--you also figured to need to make [b]A STEW[r] from the lawyers' 'Us too,' which is down the road, but it's good to have a goal in mind.";
	process the partial-oronym-check rule;
	if gs-taken-inventory is false:
		say "[line break]Maybe you should take [b]INVENTORY[r] with [b]I[r]. That might give you an idea what to do in the future.";
	now got-think is true;
	follow the summarize thinkings rule;
	the rule succeeds;

check going up in Mine Ooh:
	if sco-a-drawer is false, say "You'll probably want to go outside soon enough. But the problem is ... it's still weird, being dropped in this mine, even though you knew what was going to happen. You don't want to go wandering without a bit of help to get you started. Something concrete, beyond the aid roar." instead;
	if sco-be-strong is false, say "[The beast] blocks your way. How wrong of it! You try shifting around, but it's unmoved. It seems to have a physical edge.[paragraph break]Maybe adjusting your mental attitude will shoo the beast (wrong)." instead;
	if aight is not examined:
		say "You're eager to rush out there, but perhaps you should peruse the ... documentation the beast left behond, first. You haven't really looked at [item using] from your inventory, yet.[paragraph break]And sure, you could go out there and find stuff scattershot, but why not have some direction?" instead;
	if ur branch is unvisited, say "So you begin your quest...";
	if test-mine-only is true:
		say "Or you would, if this wasn't a test version. Thanks for getting through.";
		follow the shutdown rules;
		the rule succeeds;

[when play begins: now test-mine-only is true;]

chapter beast wrong

the beast wrong is a sentient. printed name is "beast (wrong)". "A beast (wrong) blocks your way out. You know it shouldn't be there. You know you shouldn't be afraid of it. But you are.". description is "You feel as though you shouldn't be as frightened as you are by it, but you just can't flip that switch.". eyes-number of beast wrong is 26. eyes-rule of beast wrong is pre-be-strong rule.

chapter roar/drawer

the aid roar is a thing in Mine Ooh. "[one of]An aid roar[or]That aid roar still[stopping] echoes through the mine.". description is "The aid roar [one of]goes[or]continues[stopping] 'Daze-tough-day stuff!' What is it cluing you to?". eyes-number of aid roar is 16. eyes-rule of aid roar is pre-a-drawer rule.

check listening to aid roar: try examining aid roar instead;

chapter hintthings in mine

section lucent row

the lucent row is a startprop in My New Mine Ooh. eyes-number of lucent row is -55. eyes-rule of lucent row is pre-loose-intro rule.

rule for deciding whether all includes startprop when taking: if lucent row is examined, it does not.

check taking startprop: say "It's part of the mine. [if war pawn is off-stage][b]EXAMINE[r] it, though, for some hint items[else]Its main purpose is to display hint items, and it's probably too unwieldy for your [ugh][end if]." instead;

check examining lucent row when lucent row is examined and number of hintthings in My New Mine Ooh is 0:
	say "There's nothing on the lucent row now that you took the eyes and pawn, but it seems to hold a small mystery.";
	say "[line break]";
	if jot is unexamined:
		if jot is moot:
			say "It was there at the start. Maybe it could've helped you start, in a sense?";
		else:
			say "Perhaps the [er jot] would offer a clue." instead;
	else:
		say "Lucent is a weird word -- but you read [ara]'s jot, and it was for practice, but she wouldn't have had you do something weird early." instead;

report examining lucent row:
	if jot is unexamined:
		say "Oh. The glare and brightness seem a bit unaesthetic, like [the noun] could even be hiding something, but it can't be a huge deal.";
	else:
		say "[The jot] noted it was for practice, if you wanted. But not critical. So it may hold a silly secret or two.";
	continue the action;

section goal edge go ledge

the goal edge go ledge is a startprop. printed name is "Goal-Edge-Go Ledge". eyes-number of Goal Edge Go Ledge is 1. description is "It's just there to hold hint items for you. It's less noticeable than the lucent row it replaced."

check taking a startprop:
	if slice eyes are off-stage, say "You can't, but if you [b]EXAMINE[r] [the noun], you may find something on it." instead;
	if number of hintthings in Mine Ooh is 0, say "You already took what was on [the noun]." instead;
	say "You can just take [the list of hintthings in Mine Ooh] if you want." instead;

check examining startprop when the noun is unexamined:
	say "The items on [the noun] look weird at first, but after having a thought, you see they are [eyes] and [a war pawn]. You're free to take them with [b]TAKE ALL[r], if you want.";
	move slice eyes to mine ooh;
	move war pawn to mine ooh;
	now ledge is examined;
	now lucent row is examined;
	the rule succeeds;

chapter taking hintthings

report taking a hintthing when gs-take-hintthing-note is false:
	say "Done. (By the way, [b]TAKE[r] is only used for these helper items. For game-critical items, you [b]TAKE[r] automatically.)";
	now gs-take-hintthing-note is true;
	the rule succeeds;

to say this-intro-supporter: say "[the random startprop in mine ooh]";

report taking a hintthing when gs-take-hintthing-note is true:
	if sco-loose-intro is true:
		say "On taking [the noun], you see the ledge recede, as it has nothing more to offer.";
		moot ledge;
	else:
		say "The lucent row starts to recede, then stops. [if jot is examined]You remember what was on [the jot], where [ara] called it a row/ledge[else]What's with that? Maybe [the jot] [ara] gave you can explain[end if].";
	now gs-take-hintthing-note is true;
	the rule succeeds;

chapter loose intro

the loose intro is a hintthing. description is "[intro-table]". eyes-number of loose intro is -1. drop-poke of loose intro is "You've currently [if loose intro is unexamined]not examined it yet[else if gs-loose-intro-read is false]read [intro-row - 1 in words] of [number of rows in table of intro jabber in words] pages[else]read it all[end if].[paragraph break]Are you sure you want to drop the loose intro? It's not game-critical.". drop-notify-text of loose intro is "[crumple-it]."

check examining loose intro when loose intro is unexamined:
	say "It's an introduction to your world, not from [ara], but from one Hugh Morris AKA Mick Stupp. Before reading the intro proper, you note a small warning that while no puzzles are spoiled or hinted, the author does discuss his views on how [this-game] compares to [wp] (length, plot, etc.) and also mentions how two or three puzzles break the mold a bit.";
	now loose intro is examined;
	the rule succeeds;

to say intro-table:
	choose row intro-row in table of intro jabber;
	say "[my-jabber entry] ([intro-row]/[number of rows in table of intro jabber][one of], [b]X INTRO[r] (or [b]G[r] to repeat commands) to see more[or][stopping])";
	increment intro-row;
	if intro-row > number of rows in table of intro jabber:
		now gs-loose-intro-read is true;
		say "[line break][one of]Well, that's the last of the loose intro.[or]Was it really worth reading twice? Thank you![stopping][run paragraph on]";
		now intro-row is 1;

chapter meh spot

the meh spot is a thing. "The meh spot you saw in the pro ball sits here. It makes your mine feel emptier. Perhaps something belongs there.". description is "Not much to say about it, now. Maybe something else is supposed to be there?". eyes-number of meh spot is 43. eyes-rule of meh spot is pre-mess-pot rule.

after printing the locale description for mine ooh when need-meh:
	say "Oh! What's this? The spot indicated by the pro ball. It's a pretty meh spot, but the pro ball highlighted it, so it could be significant.";
	move meh spot to mine ooh;
	continue the action;

chapter mess kit

check taking mess kit: say "You don't need to haul the kit around. It's for later." instead;

the mess kit is a stewitem. "The mess kit you found lies here. [if at-last-point]Surely now is the time to give it some use[else]You probably won't need to mess with it for a while[end if].". description is "It's a standard mess kit, not very flashy, but clean. [if at-last-point]You're ready to use it. You just need to decide what to make of it[else]It'll be handy once you have everything on [ara]'s list[end if].". eyes-number of mess kit is -34. eyes-rule of mess kit is pre-meh-skit rule. invtext of mess kit is "cookware[if sco-mess-pot is true] (the mess kit [here-in of mine ooh])[end if]".

understand "mess pot" and "pot" as mess kit.

part ur branch

Ur Branch is a room in universal. It is above My New Mine Ooh. printed name is "Ur-Branch". "[if all necessary stewitems are discovered]You seem to have nothing critical left to do. You've visited all the branches and done what you need. It's likely time to go back [b]DOWN[r] to the mine and finish what remains[else][urdesc][end if].". eyes-number of Ur Branch is 45. eyes-rule of Ur Branch is pre-herb-ranch rule.

to say urdesc: say "There are so many branches here! While you can go back [b]DOWN[r] to your mine, [if sco-summer-bay is false]you have no idea where else to go. You could spend too much time wandering around. You could lose focus[else if sco-probe-all is false]there's only east, but maybe you can find more concrete places to visit[else]the branches make more sense than they did at first"

rule for printing the locale description of ur branch:
	if all stewitems are discovered, continue the action; [this is right. The case of INSIDE must be considered since peas are a stewitem]
	let numcan be number of branchcan directions;
	now pri-bold-dirs is true;
	now pri-inside-tree is true;
	if sco-summer-bay is false:
		say "Looks like you'll need to find something to do here to get started.";
	else:
		if number of branchseen directions > 0:
			now pri-branch-detail is true;
			say "The [if number of branchseen directions > 1]branches you've been to include[else]only available branch you've visited leads[end if] [list of branchseen directions]. ";
		now pri-branch-detail is false;
		if number of branchunseen directions > 0:
			say "You've located [if number of branchunseen directions > 1]viable passages[else]a viable passage[end if] [list of branchunseen directions] without going there. ";
	now pri-bold-dirs is false;
	if number of branchdone directions > 0:
		say "Also, you've done all you need back [list of branchdone directions].";
	else if numcan > 0:
		say "[line break]";
	now pri-inside-tree is false;
	if garden tree is scenery and sign ought is not in ur branch, say "[line break]";
	continue the action;

check going in ur branch when noun is branchdone (this is the branch blocker rule):
	if opt-blah-cough is true:
		say "You hear someone say blah, then cough. You're probably done here, but nobody stops you from going back.";
		continue the action;
	say "[donetext of noun][line break]";
	if gs-know-blah-cough is false:
		say "[line break]You've tried to go back somewhere you don't need to, so it's blocked by default. [b]BLAH COUGH[r] allows you to ignore such barriers here, and [b]BLOCK OFF[r] blocks you again. These two commands will be listed in [b]OPTIONS[r].";
		now gs-know-blah-cough is true;
	the rule succeeds;

after printing the locale description of ur branch when need-meh:
	say "[line break]You remember the pro ball showed you something below in your mine. Could be worth a check.";
	continue the action;

after printing the locale description of ur branch when sco-hike-up is true and southwest is not branchcant and (not ordrooms-seen or bowl ditch is not visited) (this is the first proball southwestish rule):
	say "The hike up to the high cup revealed passages south, west and southwest. ";
	if fort is unvisited:
		say "Southwest was the least treacherous.";
	else if bowl ditch is visited:
		say "[if number of visited ordrooms > 0]Maybe there's still some of the south left to explore[else]You've been west with a burst of speed, so that leaves the south. It looked rather twisty in the pro ball[end if].";
	else if number of visited ordrooms > 0:
		say "You've seen something to the south with a burst of speed but nothing to the west, yet.";
	else:
		say "The south and west both seemed to have treacherous terrain. How to minimize its risks?";
	continue the action;

after printing the locale description for Ur Branch when sco-hike-up is true and southwest is branchcant (this is the second proball southwestish rule):
	say "You track down the southwest passage pretty easily, with the help of your pro ball. It's clearly the shortest and least treacherous.";
	reveal Fort Earns Four Turns to southwest;
	continue the action;

the first proball southwestish rule is listed before the second proball southwestish rule in the after printing the locale description rules.

after printing the locale description for Ur Branch when sco-nah-queue is true and inside is branchcant:
	say "You hear a scuffle and see the [Forest] running away. They moan something about a garden tree getting in the way. You didn't see one before, but tracing the team's most recent footprints leads you to a garden tree.[paragraph break]It doesn't appear particularly aggressive, but it's in the way.";
	reveal Pea Stalks to inside;
	move garden tree to Ur Branch;
	continue the action;

after printing the locale description for Ur Branch when sco-mess-pot is true and northwest is branchcant:
	say "[line break]You hear a rumbling from the pro ball. You see an inverted image of this very Ur-Branch! Not only that, you see passages northwest and northeast, to hidden lairs. You wonder why they only became available now, but then you realize your time cleaning up the meh spot helped you be more organized and see more organization, and perhaps you weren't ready to look at the pro ball right. You take another look, and there seems to be a leaf path north. But it leaves you (heh) a bit uneasy.";
	reveal bore dread to northeast;
	reveal Blah Copse to north;
	reveal sore dark to northwest;
	continue the action;

after printing the locale description for Ur Branch when player was in Dome Aching:
	if sco-pry-more is true and sco-gray-tin is true and sco-dough-making is true:
		say "You think back to all you did to the southeast. It was sparse enough. There can't be anything more to do.";
		now southeast is branchdone;
	continue the action;

check going to Ur Branch when southwest is branchcan:
	if bowl ditch is visited and tude ark is visited and sage oaks is visited and tube rod is visited:
		say "As [fort] comes into view, you feel dizzy at the thought of needing [the beak]'s help again.[paragraph break]Or do you really? You used it pretty much every which way. You don't see a need to, further.";
		wink-out southwest;

to wink-out (di - a direction):
	say "[line break]You consult the pro ball to make sure. It shows a large map of where you've been, and after a couple seconds, [the di] area grows dim.";
	now di is branchdone;

after printing the locale description for Ur Branch when southeast is not branchdone and sco-pry-more is true and sco-gray-tin is true and sco-dough-making is true:
	say "You look back at the dome. Inns, inner nest, dough. There's nothing left to do there.";
	wink-out southeast;
	continue the action;

check going up in Ur Branch when up is not branchcant and sco-no-date is false:
	say "You feel a sense of dread as you climb up the rope ladder. Whatever's up there, you're not ready. It would be nice to have a warding talisman or something." instead;
	if Throne Ow is unvisited:
		say "You feel a shiver as you reach the top. But then you feel a glow from your [pin], and you feel safer. You wonder if you're fully ready for a battle, but at least you won't be intimidated.";
		wfas;

check going west in Ur Branch when sco-hike-up is true and west is not branchdone:
	if bowl ditch is visited:
		say "The trail you blazed is easy to follow back[if extra-turns > 0], though it's pretty long. In following it, you lose your built-up speed[end if].";
		now extra-turns is 0;
		continue the action;
	if extra-turns is 0:
		say "Your pro ball pulses bright red. You remember, from your trip to see the high cup, there was something beyond there. But it looks awfully dense and spooky ahead. You trust the pro ball when it indicates you shouldn't trust yourself. Well, without proper preparation." instead;
	say "It looks scary to the west, but you consult the pro ball, and it's a reassuring shade of green. You feel confident, with your newfound speed, you'll be able to brazen your way through. Of course, there are nasties who nip at you, but you turbo-power your way through long-dead foliage. It's so easy! You're so excited, you forget to slow down when you reach the undergrowth, and you tumble down a slope... you feel a pain in your ankle... and, of course, you no longer feel fast.";
	reveal Bowl Ditch to west;
	move player to Bowl Ditch;
	now extra-turns is 0;
	the rule succeeds;

check going inside in Ur Branch when sco-guard-entry is false and garden tree is in location of player: say "The garden tree blocks you. It doesn't allow just any old visitors." instead;

check going south in Ur Branch when sco-hike-up is true and extra-turns is 0 and Tude Ark is not visited:
	say "The way south gets tangled very quickly. You sense there are a lot of predators you won't be able to run from, at least, not in your current condition.";
	if number of visited ordrooms > 0:
		say "[line break]But all the same, you've been somewhere. Somewhere further along. Perhaps you just need to change things up, to find somewhere nearer to the south.";
	the rule succeeds;

chapter herbs

some herbs are a proper-named eatworthy stewitems. description is "It's some herb, eh? [if sco-summer-bay is true]It helped you find a new place to visit, and it's still edible![else]Apparently it can give enlightenment to new life paths, but, uh, not THAT way.[end if]". printed name is "[if sco-summer-bay is true]those herbs[else]'some herb, eh?'". understand "herbs/herb eh" and "herb" and "some herb/herbs" and "some herb/herbs eh" as some herbs. eyes-number of some herbs is 63. eyes-rule of herbs is pre-summer-bay rule.

invtext of herbs is "[if player does not have herbs]seasoning[else]you've got lots of herbs[herb-add] now[end if]".

to say herb-add:
	if sco-summer-bay is true:
		say ",";
	else:
		say " ('some herb, eh?')";

chapter black ops

the black ops are a thing. "You also know black ops are lurking to the north, and you haven't figured what you really need to find there. Yet.". description is "If I could describe them usefully, they wouldn't be very good black ops. Or perhaps I can describe them well, but I'd get in big trouble if I did. Maybe somebody has even already had a talk with me about this matter![paragraph break](Looks nervously around, then whispers: 'Anyway. They're avoidable. I can't say more.')". eyes-number of black ops is 45. eyes-rule of black ops is pre-blah-copse rule.

chapter garden tree

the garden tree is a thing. "[if sco-pea-pod is false and all necessary stewitems are discovered]That garden tree is still there. You've got everything from the list, but you wonder if it holds one more secret that appeals to perfectionist types[else if sco-guard-entry is true]The garden tree stands here, passively[else]That garden tree the [forest] were whining about stands here[end if].". description of garden tree is "[if sco-guard-entry is false]It doesn't seem violent, but its branches are long enough it could pull you back if it doesn't trust you[else if garden-score is 2]It doesn't need to guard anything from you, now that you got what you wanted inside[else]It seems quiet enough to let you pass[end if].". eyes-number of garden tree is 55. eyes-rule of garden tree is pre-guard-entry rule.

chapter sign and south area verbs

the sign ought sigh not is a thing. printed name is "Sign Ought-Sigh-Not". "[one of]A new sign titled SIGN OUGHT-SIGH-NOT stands here.[or]The SIGN OUGHT-SIGH-NOT stands here for reference.[stopping]". description of sign ought sigh not is "[if south-sorted][b]***SHORTCUT COMMANDS***[paragraph break]N2 or 2N or NN gets you all the way back north.[r][else]WAYS SOUTH:[end if]". eyes-number of Sign Ought Sigh Not is 1.

report examining sign ought sigh not:
	list-which-room;
	continue the action;

after printing the locale description of ur branch when player was in a rotroom:
	if sign ought sigh not is off-stage:
		say "[line break]Ooh! There's a sign you didn't see before. A SIGN OUGHT-SIGH-NOT. It tells you how to get back to [random visited ordroom].";
		move sign ought to ur branch;
	if room south of ur branch is nowhere and ordrooms-seen:
		reveal tude ark to south;
		say "[line break]Ooh! There's something new on the sign. A new command, to make traversing easier.";
	continue the action;

this is the south-block rule:
	if south-covered:
		if player is in Ur Branch, try going south instead;
		say "This command isn't necessary any more, and when it was, it was only useful in [branch]." instead;
	if player is not in Ur Branch, say "You need to be in [branch] for this command to work." instead;

section r1ing

r1ing is an action out of world.

understand the command "r" as something new.

understand "r" as r1ing when gs-noted-r is true.

carry out r1ing:
	abide by the check-south-rotation rule;
	try-rotate false;
	the rule succeeds;

section r2ing

r2ing is an action out of world.

understand the command "rr" as something new.
understand the command "r2" as something new.
understand the command "2r" as something new.

understand "r2" as r2ing when gs-noted-r is true.
understand "rr" as r2ing when gs-noted-r is true.
understand "22" as r2ing when gs-noted-r is true.

this is the check-south-rotation rule:
	if south is branchdone, say "The rotation shortcuts aren't useable now you've solved the south." instead;
	if player is not in a rotroom, say "You need to be in the south to be able to use [r-rr]." instead;

carry out r2ing:
	abide by the check-south-rotation rule;
	try-rotate true;
	the rule succeeds;

to try-rotate (ts - a truth state):
	let rm be nextroom of location of player;
	if ts is true, now rm is nextroom of rm;
	if rm is unvisited:
		say "You're trying to rotate to somewhere unvisited. ";
		if player is in an ordroom:
			say "This is a small bug, since you shouldn't see [r-rr] until you've found all three ways south.";
			continue the action;
		say "So you may need to go north, then rotate, then go back south. Or you may want to [if ts is true][b]R[r] instead of [b]RR[r][else][b]RR[r] instead of [b]R[r][end if].";
		continue the action;
	if rm is not an ordroom and number of unvisited rotrooms > 0:
		say "[b]NOTE[r]: you won't be able to [b][if ts is true]RR[else]R[end if][r] again, since you still have one far-south room to visit.";
	move player to rm;

to say r-rr: say "[b]R[r] or [b]RR[r]"

section ssing

this is the check-ss-sss rule: if south is branchcant, try going south instead;

ssing is an action out of world.

understand the command "ss" as something new.
understand the command "s2" as something new.
understand the command "2s" as something new.

understand "ss" as ssing when Sage Oaks is visited.
understand "s2" as ssing when Sage Oaks is visited.
understand "2s" as ssing when Sage Oaks is visited.

carry out ssing:
	abide by the south-block rule;
	move player to Sage Oaks;
	the rule succeeds;

section sssing

sssing is an action out of world.

understand the command "sss" as something new.
understand the command "s3" as something new.
understand the command "3s" as something new.

understand "sss" as sssing when Tube Rod is visited.
understand "3s" as sssing when Tube Rod is visited.
understand "s3" as sssing when Tube Rod is visited.

carry out sssing:
	abide by the south-block rule;
	move player to Tube Rod;
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
	abide by the possibly wink out south rule;
	move player to Ur Branch;
	the rule succeeds;

check going north when room gone to is ur branch: abide by the possibly wink out south rule;

this is the possibly wink out south rule:
	if south-covered:
		say "You retrace your steps. You're pretty sure you've cleared everything to the south. As you reach Ur-Branch, the [sign ought] crumbles into the ground.";
		moot sign ought;
		wink-out south;

to decide whether south-covered:
	if sco-claim-it is false, no;
	if sco-cold-rum is false, no;
	if sco-tea-leaves is false, no;
	if sco-belt-rusted is false, no;
	yes;

book east branch

part Beach Ill

Beach Ill is a room in universal. printed name is "[if sco-be-chill is false]Beach, Ill[else if sco-punt-weaker is false]Bless-and-Bleah Sand[else]Dune Ever-Do-Never[end if]". "[if sco-be-chill is false]While the environs aren't totally illun['], you do have a general sense of malaise here, and not being able to get rid of it despite beaches usually being cheery is simply is causing more malaise. You're overthinking things a bit, maybe, and you're feeling slightly agitated. You can go back west[else][sand-desc]. The only way out on foot is back west, since you can't swim the other ways[end if][if sco-probe-all is true]. [isle-from-beach][end if].". eyes-number of Beach Ill is 25. eyes-rule of Beach Ill is pre-be-chill rule.

to say sand-desc:
	if sco-punt-weaker is true:
		say "Things feel nice and lazy here now the pun tweakers finished work on the ship";
	else:
		say "While you've found stuff to do here, it's not the most exciting place. You can't help but feel there should be more beyond"

to say isle-from-beach:
	if pile up isle is visited:
		say "A Pile-Up Isle is back east[if pile-done], though you're pretty sure you found all it had to offer[end if]";
	else:
		say "The pro ball seemed to indicate an island to the east"

After choosing notable locale objects when player is in Beach Ill:
	if Freddie is in beach, set the locale priority of Freddie to 9;

after printing the locale description of Beach Ill when sco-peace-talks is true and Sir Freddie is in Beach Ill:
	say "With the lessons learned from the Pea Stalks, you broker a tentative truce between the pun tweaker and Sir Freddie. You even have a dialogue, discussing nearby isles. Surprisingly, the pun tweaker notes one that Sir Freddie knows.[paragraph break]'Nay-Vile-Knave Isle?'[paragraph break]'No, the large waves scared me ... but they'd be a challenge now. I ... I can picture myself saying Nay, Vile Knave, to those who think they can out-surf me! What an idea! How could I help you back?'[paragraph break]The pun tweaker points to [the ship], which still need repairs. Sir Freddie blushes. 'I ... I never noticed! I was so busy with my new hobbies. But I can trade in all my questing stuff to help you repair things.'[paragraph break]The pun tweaker and Sir Freddie work together to repair [the ship]. They both shake your hand then sail off. You worry the pun tweaker might ditch you if they find you involuntarily inflicted Sir Freddie on them in the first place, but then you realize: no Sir Freddie, no fixed ship. As you do, you see the ship coming back into view.[paragraph break]'Now. What can I offer you?' 'Oh, nothing much,' you say. The pun tweaker says 'oh of course' a bit too quickly. They seem in a much better mood now, enough to start a bit of a pun-churn.";
	move pun churn to beach ill;
	moot Sir Freddie;
	continue the action;

check going east in Beach Ill when player has board red:
	say "You think about catching a wave all the way, but you wouldn't have the skills, even [if player has board]though that board would make a serviceable surfboard[else]if you had the right equipment[end if]." instead;

check going east in Beach Ill when sco-probe-all is true:
	if sco-punt-weaker is false, say "You have no transport. Yet. And the pun tweaker won't take you for free." instead;
	if sco-pry-more is false, say "You have no way to steer the punt. Yet." instead;
	if pile-done, say "You're pretty sure you found everything there." instead; [1st condition may not be necessary, but make sure of things]
	say "[one of]Your punt (weaker) is not useless. Maybe the prime oar will help it be more useful.[or]The punt returns to the isle with no incident.[stopping]";
	move punt to isle;
	move oar to isle;

check going west in beach ill:
	if pile-done, wink-out east;

chapter nigh swarm

the nigh swarm is a thing. "A nigh swarm ruins the tranquility of the area. You can't see behind it.". description is "[swarm-buzz].". eyes-number of nigh swarm is 44. eyes-rule of nigh swarm is pre-nice-warm rule.

to say swarm-buzz: say "The nigh swarm buzzes aggressively, which leaves you feeling slightly frozen"

chapter sand

there is a thing called the bless and bleah sand. it is scenery. eyes-number of sand is 1. "There's nothing special about the sand, but there is a lot of it. It wouldn't be much of a beach without sand.". printed name is "bless-and-bleah sand".

chapter pro ball

the pro ball is a thing. description is "[if sco-probe-all is false]If you look at it right, you may be able to see a bit more, but you haven't, yet[else]You stare a bit at the pro ball[end if].". eyes-number of pro ball is 53. eyes-rule of pro ball is pre-probe-all rule.

check examining pro ball when pro ball is unexamined: say "[if sco-probe-all is false]It's marked PRO, but really, it's[else]It's[end if] more like an orb than a ball. It's certainly polished enough to be an orb. But if it were an orb, well, you just don't see how you could change it. I trust you understand by now.";

check taking pro ball when sco-probe-all is false: say "It won't budge. At least, not right now." instead;

report examining pro ball:
	if sco-hike-up is false:
		say "Nothing new, alas. Perhaps it will provide more guidance when things get trickier.";
		continue the action;
	if west is branchdone and south is branchdone:
		if sco-malt-hour is false:
			say "In the rough map of where you are and where you've been, it seems to light up only the northeast.";
		else:
			say "It is dark again, just as it was before you found the high cup. Perhaps you've used it all you can in its current form.";
		continue the action;
	say "The orb maps out roughly where you've been. [one of]You recognize the southeast and north and east pretty easily. [or][stopping]You see a long passage dragging through the west, and you also see three branches to the south: short, medium and long. Between them is the southwest, which has the shortest path, no branch.";
	say "[line break]Looking closer at the south, you see it has ";
	if west is branchdone:
		say "dimmed out.";
	else:
		say "three branches as well.";
	say "[line break]";
	if number of visited rotrooms is 6:
		say "The whole of the south area is lit up. You've found everything [if mrlp is r-south]there[else]here[end if].";
	else if ordrooms-seen:
		say "The north half of the south area is lit up, but to the south, the bottom half is [if number of visited rotrooms is 3]totally[else if number of visited rotrooms is 4]mostly[else]still a bit[end if] dark. A bit more to explore, then.";
	else:
		say "[if number of visited rotrooms is 0]The entire south is dark, though[else if number of visited rotrooms is 1]The south is mostly dark, though[else]The south is mostly lit up, except for one small corner[end if]."

chapter pie crust

the pie crust is an eatworthy stewitem. description is "Not very fancy, but it's good enough.". eyes-number of pie crust is -1. invtext of pie crust is "(should be taken care of by another item)".

chapter pun tweaker

The pun tweaker is a sentient. "The pun tweaker continues to stay here, [if sir freddie is in beach ill]annoyed with their 'new' 'friend.'[else if sir freddie is not moot]throwing out desultory puns while grumbling they don't want to fix [the ship].[else]making a pun-churn while you decide on your reward.[end if]". description is "[pun-tweaker-desc].". eyes-number of pun tweaker is 46. eyes-rule of pun tweaker is pre-punt-weaker rule.

to say pun-tweaker-desc:
	if sir freddie is in beach ill:
		say "The pun tweaker glances with annoyance at Sir Freddie's surfing antics";
	else:
		say "Relatively jokey and carefree. This carefree attitude does not extend to flat-out generosity[if sir freddie is moot]--well, they'll give you a little something for helping with Sir Freddie[end if]";

chapter gauche hip go ship

the gauche hip go ship is scenery. printed name is "Gauche/Hip GO-Ship". "It's really gaudy. You'll probably never get a chance to ride in it. But maybe it contains something you need.". eyes-number of Gauche Hip GO Ship is 1.

chapter punt weaker

the punt weaker is a thing. printed name is "punt (weaker)". "Your punt, weaker, floats here[punt-status].". description is "It seems pretty sturdy, actually. Perhaps its speed is weaker than something gas-powered or whatever[if sco-pry-more is true and sco-stark-raft is false]. The prime oar is attached to it[end if].". eyes-number of punt weaker is -1.

report examining punt weaker when punt weaker is unexamined:
	say "The pun tweaker has carved 'reel east, RELEASED.' Ah, so they DID have a pun for you, sort of. Not a helpful one, of course.";
	continue the action;

check taking punt: say "You can just go east or west as needed." instead;

after printing the locale description for beach ill when punt is in beach ill and player has prime oar:
	say "You attach the prime oar to the punt.";
	continue the action;

to say punt-status:
	if sco-pry-more is false:
		say ". It has no steering mechanism, yet";
	else if sco-stark-raft is true:
		say ". The prime oar, of course, is back in [turbo tours]. You're not lugging it back. You've gotten what you need from the isle";
	else if pile-done:
		say ". It served you well, [if player is in isle]and you think you've seen what you needed here[else]but you can't think of a reason to go back to the isle[end if]";
	else:
		say ", ready to take you [if player is in isle or isle is visited]back [end if][if player is in isle]west[else]east[end if]"

check going west in Pile Up Isle:
	say "You have no problem steering the punt back now you've got the hang of things. It seems surprisingly sturdy.";
	move punt to beach;
	move oar to beach;

chapter punch urn

the pun churn is scenery. printed name is "pun-churn". "The pun-churn is quite enjoyable. The pun tweaker's really good at this punny stuff, especially now they're in a better mood.". eyes-number of pun churn is -53. eyes-rule of pun churn is pre-punch-urn rule.

the punch urn is an unnecessary stewitem. "An urn full of all the powdered drinks you imagined and then some. A total rainbow of artificial colors and garish cartoons and logos and the occasional ZERO CALORIES note.". eyes-number of punch urn is -1.

chapter dune ever do never

there is a thing called dune ever do never. it is scenery. eyes-number of dune is 1. "It sits lazily around. It's not worth climbing or exploring. It is what it is.". printed name is "Dune Ever-Do-Never".

book northwest branch

part Sore Dark

Sore Dark is a room in universal. printed name is "[if sco-sword-ark is false]Sore Dark[else]Sword Ark[end if]". description is "[if sco-sword-ark is false]You can't see much here, but maybe if you fumble around for what you need, or make an educated guess, you'll find it[else if sco-blast-ring is false]The sword ark hangs above you, the Terra Blade intertwined in it, far too high to climb up to[else if sco-terrible-aid is false]The Terra Blade lies among the erstwhile rubble of the sword ark[else]The sword ark lies in ruins here. There was nothing other than the Terra Blade inside[end if].". eyes-number of Sore Dark is 53. eyes-rule of Sore Dark is pre-sword-ark rule.

chapter sword ark

the sword ark is scenery. "The Terra Blade is suspended in the sword ark above. How to get the blade down? Is there any item you have that could weaken or destroy the ark?". eyes-number of sword ark is -1.

chapter Terra Blade

The Terra Blade is scenery. indefinite article of terra blade is "the". "It looks very impressive, almost too impressive for you to use as swords are generally uses. [if sco-blast-ring is false]Also, it's suspended above in the sword ark, too high to reach, but--well, maybe you can damage the ark so the blade falls[else if sco-terrible-aid is false]You're pretty sure you need to take possession of it, but you're worried an annoying voice will boom out something about your destiny when it does[else]Now that you have it, you really hope you don't have to defeat someone super-powerful with it[end if].". eyes-number of Terra Blade is 83. eyes-rule of Terra Blade is pre-terrible-aid rule.

check taking terra blade when blade is in sore dark:
	if sco-blast-ring is false, say "It's embedded too high up in the ark!" instead;
	say "You usually need to say something kind of important sounding to take a blade as important as the Terra Blade." instead;

book north branch

part Blah Copse

Blah Copse is a room in universal. "[if sco-or-clerk is false]The only really clear safe path is[else]Thanks to Sir Freddie and your own cleverness, you found a way north as well as[end if] back south to [branch].". eyes-number of Blah Copse is 1.

check going to Blah Copse when sco-blah-copse is false:
	now gs-tried-black-ops is true;
	move black ops to Ur Branch;
	say "[one of]You walk north, but somehow, you stumble by a black ops site, and you're flagged down. What are you doing here? How did you even get close? After some questioning, you're sent back to the Ur-Branch by people who 'suggest' you forget this ever happened. Returning is ... not advised. This does nothing to quell your curiosity about what's REALLY north[or]Oh, no, you can't risk going back to the black ops site. The pro ball indicated something north, but you're missing where you REALLY need to go. Once you know that, you know you can avoid the wrong turn. Until then, it's too risky[stopping]."  instead;

chapter Forest Team

the Forest Team for Esteem is a plural-named hostile sentient in Blah Copse. "[one of]A group of adventurers is waiting for you here. After an over-friendly introduction where they introduce themselves as the Forest Team for Esteem, and where you don't impress them back, they begin to knock you, well, verbally[or]The Forest Team for Esteem continues to knock you verbally. Which isn't fatal, but it's getting in the way of you deciding what to do next[stopping].". description is "A bunch of boors with little better to do than knock you.". eyes-number of Forest Team is 35. eyes-rule of Forest Team is pre-nah-queue rule.

chapter Sir Freddie

Sir Freddie is a sentient. "Sir Freddie [if player is in blah copse]stands here nervously[else]catches wave after wave, much to the dismay of the pun tweaker[end if].". description is "[if player is in blah copse]He looks uneasy, out of his depth here in a legitimately questy area, and clueless where else he might go[else]Much more confident now he's surfing, but it'd be nice to broker peace, here[end if].". eyes-number of Sir Freddie is 45. eyes-rule of Sir Freddie is pre-surf-ready rule.

understand "f/fred/freddy" and "sir f/fred/freddy" as Sir Freddie when Sir Freddie is touchable.

chapter blah string

the blah string is a thing. description is "You look at it, and it doesn't seem like it could become anything powerful. Then it rearranges itself briefly, into the semblance of an arrow pointing up, before collapsing.". indefinite article of blah string is "some". eyes-number of blah string is 54. eyes-rule of blah string is pre-blast-ring rule.

report examining blah string:
	if pre-blast-ring rule is guessed-yet:
		say "But you know it can be a blast ring. The question is, where?";
	else:
		say "It hides its power well. But where to use it, and how?";
	continue the action;

chapter orc lurk foreboding

the orc lurk foreboding is a thing. "Sir Freddie's orc lurk foreboding was caused by something to the north. How to face it or prove it wasn't serious?". description is "You can't tell the exact source of Sir Freddie's orc lurk foreboding. Somewhere to the north[if player has eyes]. If you needed them to, your [eyes] could probably get a read on it[end if].". eyes-number of foreboding is 25. eyes-rule of foreboding is pre-or-clerk rule.

part Morph Lairs

Morph Lairs is a room in universal. "[if sco-more-flares is false]You're pretty sure you don't want to enter the lairs here. Even the ones that seem safe could turn unsafe quickly. And yet ... they can't just be THERE[else if gs-row-plaider is false]Returning here, you wonder what you will find[else]The row (plaider) of houses that were once morph lairs stands here[end if].". eyes-number of morph lairs is 46. eyes-rule of Morph Lairs is pre-more-flares rule.

after printing the locale description for Morph Lairs when sco-more-flares is true and gs-row-plaider is false:
	now gs-row-plaider is true;
	move row plaider to Morph Lairs;
	say "The morph lairs have certainly morphed. There is now a whole row of houses. They seem lifeless, but they're all -- well, plaid. More plaid than anything you've seen. Why, you could call them a row, plaider. There's a whole platter full of them!";
	continue the action;

chapter row plaider

the row plaider is scenery in Morph Lairs. "Boy, it's plaider than anything you've ever seen, a whole platter of plaider[if sco-rope-ladder is false]. All that plaid does a number on your eyes. Maybe it's hiding something in plain sight[else]. You're not all that interested in it, now that you've gotten the rope ladder[end if].". eyes-number of row plaider is 46. eyes-rule of row plaider is pre-rope-ladder rule.

understand "house" and "houses" as row plaider when row plaider is touchable.

chapter rope ladder

the rope ladder is a thing. description is "It seems sturdy enough, for places slightly out of reach. Though even crumpled, it's big enough you're glad you have [ara]'s [lug].". eyes-number of rope ladder is -1.

report examining rope ladder:
	if up is not branchcant, say "But you remember how it uncoiled to reveal a passage up from [here-in of ur branch].";
	continue the action;

book northeast branch

part Bore Dread

Bore Dread is a room in universal. description is "[if sco-board-red is false]My goodness, there seems to be nothing to do here except go back southwest. Or maybe search for some random item[else]Finding the board (red) was almost exciting. But you can't hope for anything else interesting here. Maybe just go back southwest[end if].". eyes-number of Bore Dread is 53. eyes-rule of Bore Dread is pre-board-red rule.

check going east in Bore Dread when sco-malt-hour is false: say "Not without destroying the maul tower or mollifying its inhabitants. In fact, you take a few steps east, only to hear that keeping people out is thirsty work." instead;

chapter maul tower

the maul tower is a thing in Bore Dread. "[if sco-dupe-it is true]The maul tower guards the way east, but there's nothing left to do there[else if sco-malt-hour is false]Well, there's that maul tower guarding the way east. Maybe you can sneak past it[else]There might be something still to do east of the maul tower[end if].". description is "[if sco-malt-hour is true]It seems much cozier not you met and bri--, uh, made friends with the inhabitants[else]You're not sure how to get past it, especially since you won't be able to maul back[end if].". eyes-number of maul tower is 44. eyes-rule of maul tower is pre-malt-hour rule.

chapter board red

The board red is a thing. printed name is "board (red)". description is "It's about six feet long and one foot wide, or it would be when unfolded (it snaps into and out of its full length easily. You checked.) THIS SIDE UP and CATCH THE WAVES are written on it.". eyes-number of board red is -1.

part Joy Nadir

Joy Nadir is a room in universal. it is east of Bore Dread. printed name is "[if sco-join-aider is true]Dew Pit[else]Joy Nadir[end if]". "[if sco-join-aider is false]Maybe the maul tower was guarding you for your own good. It seems that way on first impression. Nothing anywhere gives any indication that this place could help bring people together. Though maybe if you could think of a way to change that...[else]It's less cheerless now. But you still hope you can do something here.[end if]". eyes-number of joy nadir is 45. eyes-rule of joy nadir is pre-join-aider rule.

chapter dew pit

a dew pit is scenery. "It seems hungry but not greedy.". eyes-number of dew pit is 42. eyes-rule of dew pit is pre-dupe-it rule.

chapter orb and or band

there is a thing called the orb and or band. printed name is "orb and/or band". description is "Being made from the belt (rusted) and the pro ball, it's clearly a powerful artifact. Just holding it, you feel occasional surges of power. But where to unleash this power?". eyes-number of orb is -1.

chapter ten dregs tender eggs

there is a proper-named stewitem called Ten Dregs Tender Eggs. printed name is "Ten Dregs['] Tender Eggs". description is "It's a carton of ten eggs, each slightly smaller than the original Egg of a Guv, but still plenty big and, you hope, tasty. It should be enough to whip out whatever you need to, when the time comes.[paragraph break]You have to admit the brand name worried you until you read this elsewhere on the carton: 'We strenuously fallow all tend-regs.'". eyes-number of tender eggs is -1.

invtext of Tender Eggs is "[if sco-barn-open is false]eggs[else if sco-dupe-it is false]eggs (you only have [the Egg]--you need more)[else]the [Eggs][end if]".

book inside

part Pea Stalks

Pea Stalks is a room in universal. "Pea stalks grow here. But they're nothing you can eat, or prepare to eat quickly[if sco-pea-pod is false]. Maybe you can peep odd things here, if you have something specific in mind[end if]. You can only go back [b]OUT[r].". eyes-number of Pea Stalks is 55. eyes-rule of Pea Stalks is pre-peace-talks rule.

chapter pea pod

the pea pod is an unnecessary stewitem. description is "It's an unusual pea pod. It'll go well with the meal.". eyes-number of pea pod is -1.

book east branch

part A Pile Up Isle

A Pile Up Isle is a room in universal. printed name is "A Pile-Up Isle". eyes-number of A Pile Up Isle is 1. "You've found the isle east of the erstwhile Beach, Ill. It's ... not been tended to for a while."

the bay spikes are a plural-named thing in A Pile Up Isle. "Bay spikes seem to guard you from entering the large pile. They are too sharp to walk on. What to do?". description is "Too sharp to walk on.". eyes-number of bay spikes is 45. eyes-rule of bay spikes is pre-base-pikes rule.

After choosing notable locale objects when player is in Pile Up Isle:
	if pike rust is in beach, set the locale priority of pike rust to 0;

chapter pike

the base pikes are a plural-named thing. "Base pikes lie here as part of the bric-a-brac[if sco-pie-crust is false]. Pike rust has piled up on them. They must've been here a while[end if].". description is "[if sco-pie-crust is false]And, oh boy, do they have some rust on them.  Pike rust![else]The pikes are shiny and new now you repurposed their rust. Still potentially kinda base and evil, though. You don't need weapons like these. In fact, you doubt you need any.[end if]". eyes-number of base pikes is -1.

section pike rust

the pike rust is scenery. description is "It's on the pikes, sort of a cover on the side. Perhaps it is better as something else.". eyes-number of pike rust is 35. eyes-rule of pike rust is pre-pie-crust rule.

check taking pike rust: say "Oh, it might flake off uselessly if you just took it." instead;

chapter high cup

The high cup is a thing. "[if sco-hike-up is true]That high cup sits at the top of the pile, unachievable, but the journey sure was rewarding![else]A high cup is at the top of the pile.[end if]". description is "[if sco-hike-up is true]It wasn't such a big deal once you saw it[else]It looks quite impressive--from a distance. But you haven't figured how to reach it[end if].". eyes-number of high cup is 42. eyes-rule of high cup is pre-hike-up rule.

check taking the high cup when high cup is in Pile Up Isle: say "You take a direct path, but it's too steep." instead;

book southeast branch

part Dome Aching

Dome Aching is a room in universal. printed name is "Dome, Aching". "[if sco-can-take is false]Ugh. You're not physically uncomfortable, you just feel ... oh, how can I describe it? A can't-ache. You're so focused on the pain, you're not really looking for anything useful here[else if dome-in-score > 0]The dome is less intimidating than when you first entered now[else]You're a bit more aware of your surroundings now with your ache gone[end if]. Of course, you can always go back northwest to the Ur-Branch.". eyes-number of Dome Aching is 56. eyes-rule of Dome Aching is pre-dough-making rule.

after printing the locale description for dome aching when sco-can-take is true:
	say "[if sco-gray-tin is true]The Great Inn probably gave everything it had to offer.[else]A Great Inn is located off to the side here. What could they hold?[end if]";
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

check going inside in Dome Aching when sco-in-earnest is false:
	if sco-can-take is false, say "The can't-ache kicks in, leaving you feeling like you couldn't possibly deserve to visit such a private place!" instead;
	say "The inner nest repels you. Your motives aren't pure. Quester see, quester visit, quester score points. So cold and calculating!" instead;

check going inside in Dome Aching when sco-pry-more is true: say "You've pried enough in the inner nest." instead;

chapter cant ache

the cant ache is a thing in Dome Aching. "The can't-ache sweeps through the air, paralyzing you from doing anything constructive.". description is "Analyzing the ache will do no good. It can't be subdued physically. You just have to take that leap and neutralize it.". printed name of cant ache is "can't-ache". eyes-number of cant ache is 34. eyes-rule of cant ache is pre-can-take rule.

check taking cant ache: say "Hmm, you may or may not have figured what to do, so I'm going to be pedantic and insist on you saying it absolutely tight." instead;

chapter great inn

the great inn is scenery. "It's very impressive. [if sco-gray-tin is false]Maybe it has some cast-off items for you[else]But you doubt it holds and more freebies[end if].". eyes-number of great inn is 43. eyes-rule of great inn is pre-gray-tin rule.

chapter gray tin

the gray tin is an uneatable stewitem. description is "The gray tin is curently [if sco-pie-crust is false]empty[else]full of pie crust.". understand "grey" and "grey tins" as gray tin. eyes-number of gray tin is -1.

invtext of gray tin is "[if sco-gray-tin is false]crust[else if sco-pie-crust is false]a gray tin with nothing in it[else]pie crust in your gray tin (counts as two items)[end if]"

chapter inscen

the inscen is privately-named scenery. printed name is "inner nest". description is "[inscen-desc].". understand "inner/nest" and "inner nest" as inscen when inscen is in location of player. eyes-number of inscen is 27. eyes-rule of inscen is pre-in-earnest rule.

to say inscen-desc:
	if inner nest is visited:
		say "You've been to the inner nest and [if sco-pry-more is true]got[else]saw, but didn't get,[end if] the prime oar. There wasn't much else";
	else:
		say "What could lie there? [if sco-in-earnest is true]Just go [b]IN[r] to find out[else]It seems resistant to casual tourism, people who just want to see everything[end if]";

chapter dough

the dough pail is a thing. description is "It's a pail full of dough. Very white dough for white bread. Unfortunately, you don't have easy access to the sort of ovens that cook dough. Maybe it'd be useful for someone who did.". eyes-number of dough pail is 43. eyes-rule of dough pail is pre-dope-ale rule.

the dope ale is an alcoholic stewitem. indefinite article of dope ale is "some". description is "Well, its label is pretty dope, you guess. Maybe it has really dope television commercials, too. Ever since you were of legal drinking age, you started caring a lot less about that.". eyes-number of dope ale is -1.

part Inner Nest

Inner Nest is a room in universal. eyes-number of Inner Nest is -1. description is "[if sco-pry-more is true]All that prying didn't just find you that oar. It left you sure there was nothing else[else]Well, you made it. It's not very big, but then again, it is both inner and a nest[end if]. You can go back [b]OUT[r] from here.".

the prime oar is a thing in Inner Nest. "A prime oar stands here, floating in space[one of]. You reach out for it lazily, and it floats away[or]Whenever you get too close, it slides away[stopping].". description is "Man! It looks really aerodynamic, and stuff. And it's lightweight, too.". eyes-number of prime oar is 34. eyes-rule of prime oar is pre-pry-more rule.

report examining prime oar when pun tweaker is not moot:
	say "You wonder briefly if the prime oar could help the pun tweaker steer the ship. No, it wouldn't reach the water. The pun tweaker needs something else.";
	continue the action;

check taking prime oar when prime oar is in Inner Nest: say "You can't get close enough." instead;

book southwest branch

part Fort Earns Four Turns

there is a room called Fort Earns Four Turns. it is in universal. printed name is "Fort Earns-Four-Turns". "[if sco-oh-clever is false]An oak lever is here, tempting you to pull it and maybe find another exit besides back northeast[else]The [wick] revealed when you pulled the lever is here. You can also go back northeast[end if].". eyes-number of fort earns is 1.

chapter oak lever

the oak lever is scenery in Fort Earns Four Turns. "It looks intricate, not something any yutz can just walk in and pull. Before and after examining it, you think 'I read it' and 'I read it.' The second sentence feels better.". eyes-number of oak lever is 26. eyes-rule of oak lever is pre-oh-clever rule.

check taking oak lever: say "If you snap it off, you'll never find what will happen when you pull it." instead;

check pulling oak lever: say "[oak-how]." instead;
check pushing oak lever: say "[oak-how]." instead;

to say oak-how: say "It's not immediately obvious how. But there must be a way, levers being levers"

chapter beak wick

the be quick beak wick is scenery. "The [wick] sits here. [if extra-turns > 0]You can still feel its effect, though it can't hurt to touch it again[else if beak wick is examined]You poke at it again[else]It doesn't seem dangerous. You inspect it a bit more closely[end if].". printed name is "be-quick beak/wick". eyes-number of be quick beak wick is -1.

check waiting when extra-turns > 0: say "You're too antsy to sit and wait. For better or worse, the be-quick beak-wick doesn't just give you the opportunity to be faster. It COMPELS you. So you're not going to lose a turn of walking that way." instead;

report going when extra-turns > 0:
	decrement extra-turns;
	if extra-turns is 0, say "You feel back to normal speed.";
	continue the action;

report examining quick beak wick:
	if extra-turns is 4:
		say "You're already at maximum speed.";
	else if extra-turns > 0:
		say "You recharge yourself.";
	else:
		say "[one of]You instantly feel a disorienting surge of speed. What can you do with it?[or]You feel that speed rush again.[stopping]";
	now extra-turns is 4;
	now gs-bin-while-fast is false;
	continue the action;

check examining beak wick when bowl ditch is visited and oaks are visited and tude ark is visited and tube rod is visited:
	say "You feel slightly dizzy just looking at [the wick]. Extra speed isn't all it's cracked up to be. You've discovered everywhere it can take you, and your pro ball seems to agree, lighting up red." instead;

chapter felt wrap

the felt wrap is a thing in Fort Earns Four Turns. "Some completely innocuous felt wrap lies here.". description is "Um. Completely innocuous. Right?". eyes-number of felt wrap is 44. eyes-rule of felt wrap is pre-fell-trap rule.

chapter fell trap

the fell trap is a thing. "The fell trap [one of]has replaced the felt wrap[or]sits here ominously[stopping]. [if sco-cellar-bin is true]It looks as though it's been reset since you last visited, if you need to [b]EXAMINE[r] it and get caught again, for whatever reason[else]It looks pretty vicious! It might even catch anyone trying to [b]EXAMINE[r] it[end if]. But it might send you somewhere new you can't walk to.". description is "Filler text you shouldn't see. The check examining rule should send you to a new room.". eyes-number of fell trap is -1.

check examining fell trap:
	if cell urban is unvisited:
		say "You poke the trap, and the floor below collapses. A very brief fall, and you wind up in...";
		change up exit of Cellar Bin to Fort Earns;
		move player to cell urban;
		the rule succeeds;
	say "Thud! But you're a bit more prepared for the drop this time.";
	if extra-turns > 0:
		if gs-bin-while-fast is true:
			say "[line break]Unfortunately, falling down two times in quick succession was a real hey-stop-haste op. It knocked the speed out of you.";
			now extra-turns is 0;
		else:
			say "[line break]Ouch! That hurt, but you still have your speed intact. In fact, the fall was so brief, you don't think you lost any serious time. You wouldn't want to fall quickly again, though. That'd leave you dazed, even though you knew what was coming.";
			now gs-bin-while-fast is true;
	move player to Cellar Bin;
	the rule succeeds;

part Cell Urban

Cell Urban is a room in universal. printed name is "Cell, Urban". "[one of]THUD! [if extra-turns > 0]You're so anxious about being trapped here, you keep pacing until your speed wears off. [end if]Ugh. You see no way out to start. Perhaps you can complain to the manager, somehow.[or]Still stuck. No fair! There must be a way out![stopping][paragraph break]You're getting sick of the noises of the city all around you. You have no clue where they're coming from. You're not aware you were anywhere near a city. But what's more important is getting out of here.". eyes-number of Cell Urban is 63. eyes-rule of Cell Urban is pre-cellar-bin rule.

part Cellar Bin

Cellar Bin is a room in universal. "[one of]You're in a bin. Not a particularly interesting one, but if your name were Abe, why, then you'd be Abe in a bin! [or][stopping]The only way out is back up[if gs-up-cellar-bin is true]. You know it's one-way, of course[end if].". eyes-number of Cellar Bin is -1.

check going up in Cellar Bin:
	if gs-up-cellar-bin is false:
		say "As you crawl up a small shaft, you find the outline of a trap door. You flip it up, and -- whew! You're back in [fort earns]. But once you're on your feet, you can't see the trap door any more.";
	else:
		say "You walk up through the vanishing trap door again.";
	now gs-up-cellar-bin is true;

book west branch

part Bowl Ditch

Bowl Ditch is a room in universal. "[if sco-bold-itch is true][ditch-full][else]Ouch. Oww. You're lying on the ground, embarrassed how you tripped and fell, worried and scared there's no way back. Your injury is probably more psychological than physical, but it's there, and you need to overcome it[end if].". eyes-number of Bowl Ditch is 44. eyes-rule of Bowl Ditch is pre-bold-itch rule.

to say ditch-full:
	if sco-barn-open is true and sco-tour-boaters is true:
		say "You only need to go north[if sob acres is visited] to [sob acres][end if]. You've taken care of things to the west, even improving Turbo Tours";
		continue the action;
	say "Now you've got your bearings, you wonder why this place ever intimidated you. You see passages north[if acres is visited] to [sob acres][else] (unvisited)[end if] and west[if tours is visited] to [tours][else] (unvisited)[end if], as well as back east to Ur-Branch";

check going east in bowl ditch:
	if sco-bold-itch is false, say "You're wallowing too hard at the moment to retrace your steps. You've lost anything resembling moxie." instead;
	if sco-no-date is true and sco-barn-open is true:
		say "You got that egg, and you destroyed the nodes. You're pretty sure the area behind you, to the west of Ur-Branch, is clear now.";
		wink-out west;
		wfas;

part Sob Acres

Sob Acres is a room in universal. printed name is "[if sco-dell-eastern is false]Sob Acres[else]Dell, Eastern[end if]". "[if sco-saw-bakers is false]You feel very sad and lonely here. You're looking for someone, anyone...[else if sco-dell-eastern is false]Hey, there's a deli you can go inside! It doesn't look very cheery, but it's something[else if sco-den-specs is false]This dell still has an air of mystery about it, like it's hiding something, but there's the deli inside to the west, and that's pretty good[else if sco-no-date is false]There's the deli to the west, or you can go DOWN into a den[else][deli-post-nodes][end if]. You can always just go back south, of course.". eyes-number of Sob Acres is 36. eyes-rule of Sob Acres is pre-saw-bakers rule.

to say deli-post-nodes:
	if gs-deli-party is false:
		say "With the den taken care of, the deli to the west is doing great business";
	else:
		say "You've had your fun in the deli to the west, so you don't see much to do here";

after printing the locale description for Sob Acres when sco-den-specs is true and gs-den-seen is false:
	say "[line break]";
	reveal-den;
	continue the action;

to reveal-den:
	say "Your den specs reveal something you missed before, here. A passage leading down to what must be a den.";
	now gs-den-seen is true;
	reveal Groan Odes to down;

check going to deli stern when sco-no-date is true:
	if gs-deli-party is false:
		say "You stop by and recognize a few of the people who cheered you setting them free from the groan odes and number-sting. It's a great few hours, but you need to get on with your quest. They thank you for your bravery, and the [owners] thank you for helping their business grow so fast before grumbling about all the taxes they'll need to pay on their new profits.";
		now gs-deli-party is true;
	else:
		say "Everything is great in the deli. You don't need a detour from your adventure.";
	the rule fails;

check going down in Sob Acres when sco-no-date is true: say "Everything's okay there. Time to move on." instead;

part Deli Stern

Deli Stern is a room in universal. printed name is "[if gs-deli-ale-left is true]'Die, Nerviness' Diner Venus[else]Deli, Stern[end if]". "You can only really go out[if sco-dell-eastern is true] (well, east, same thing)[end if] here.". eyes-number of Deli Stern is 47. eyes-rule of Deli Stern is pre-dell-eastern rule.

after printing the locale description for Deli Stern when player was in Sob Acres and player has pliers:
	say "'Business is great! We can't thank you enough. We wouldn't have the time. We're busy planning a new line of ice cream flavors. Say, did you ever find a use for those pliers?'";
	continue the action;

chapter Fey Loners Fail Owners

the Fey Loners Fail Owners are a plural-named sentient in Deli Stern. Printed name is "fey loners/fail-owners". eyes-number of owners is 1. description is "They look pretty unsocial, which is pretty bad for business owners. Maybe you can TALK to them for what they need.". "[if gs-deli-dell-left is false]Some[else]Those[end if] [owners] [if gs-deli-dell-left is false]trudge around miserably here[else if gs-deli-ale-left is false][one of]look less miserable now[or]stand around, muttering about finding decent bread[stopping][else if sco-beef-ordering is false]point to the [toon][else if whee try is in deli and sco-wheat-rye is false]point at the WHEE TRY sign[else]beam with pride at their burgeoning business[end if]."

check going in Deli Stern when room gone to is not nowhere:
	if sco-dell-eastern is true, now gs-deli-dell-left is true;
	if sco-dope-ale is true, now gs-deli-ale-left is true;
	if sco-beef-ordering is true, now gs-deli-beef-left is true;
	if sco-wheat-rye is true and player does not have pliers:
		say "'Oh! We almost forgot! Business is booming so much, we might even start selling ice cream. You've earned a little something. Maybe this will come in handy for you. We don't need any repairs at the moment, and if we did, we'd need a different tool.' They hand you some [pliers].";
		now player has pliers;
		wfas;

after printing the locale description for deli stern:
	if gs-deli-dell-left is true and gs-deli-dell-return is false:
		now gs-deli-dell-return is true;
		say "The [owners] perk up on seeing you. 'We had a few customers. We might even have prospective repeat customers! But we're running short of bread. Even some of the cheap white generic stuff would do. We'll trade for it. Just ask for the right thing.'";
	if gs-deli-ale-left is true and gs-deli-ale-return is false:
		now gs-deli-ale-return is true;
		say "The [owners] look a bit happier than before. 'We've had a few more customers. We even rebranded our business! And created some ambiance! Even got a promotion for new meals! No-one's figured it out yet, but maybe you can ... well, [i]we[r] think it's sort of cute...' They point to something they drew on the wall. 'A [toon]! Pretty spiffy, eh?'";
		move toon to Deli Stern;
	if gs-deli-beef-left is true and gs-deli-beef-return is false:
		now gs-deli-beef-return is true;
		say "The [owners] cheer your return. 'Wow! You've really helped up! Your dough was great, but ... with the profits from our latest customers, we bought some entirely new stuff!' They point to yet another sign up on the wall. 'Free samples for everyone! Well, you more than most, for all your help.' The sign say WHEE TRY.";
		move WHEE TRY to Deli Stern;
	continue the action;

chapter Toon Eat Too Neat

the Toon Eat Too Neat is a thing. printed name is "Toon Eat-Too-Neat". "The [toon] [the owners] scribbled is up on the wall here.". description is "[if sco-beef-ordering is true]You appreciate [the toon] a bit more, now you figured what it meant. Yay, you![else]The [toon] has three words, two blurred, one saying AFTER. But the images are clear: a skinny frowning man, the same man ravenously eating, and the same man, belly distended, sitting happily in a recliner. What does it mean? What should it mean? What can it mean?[end if]". eyes-number of Toon is 48. eyes-rule of Toon is pre-beef-ordering rule.

report examining toon eat when sco-beef-ordering is false:
	say "This might be worth talking out to yourself. Just figuring what the hidden words are.";
	continue the action;

report thinking (this is the toon partial thinking rule):
	if sco-beef-ordering is false:
		if toon-guess-score is 0, continue the action;
		say "You've deciphered the toon [if toon-guess-score is 1]partway[else]completely[end if] but haven't guessed what to do with it. Right now, you know [if gs-toon-guess-1 is true]BEFORE[else]------[end if] [if gs-toon-guess-2 is true]DURING[else]------[end if].";
		now got-think is true;
	continue the action;

the toon partial thinking rule is listed before the summarize thinkings rule in the report thinking rules.

chapter meat

the Me Track Meat Rack is an edible stewitem. description is "It's a sample of all different sorts of meats, prepared different ways, all organized for tracking like a good rack should be, with 'Meat? Ooh, Me Too!' inscribed on it.". printed name is "me-track-meat rack". eyes-number of meat rack is -1.

invtext of Me Track Meat Rack is "[if sco-beef-ordering is false]a variety of meats[else]that [rack] from [deli][end if]".

chapter pliers

The mope liars mo pliers are a plural-named thing. description is "On the one hand, they're pliers, so they can't be too hard to use. But on the other hand, they were supposed to be kind of special, so you're worried you've overlooked an obvious feature. Guess you can only hope to use them right when the time comes.". printed name is "'Mope, Liars, Mo[']' Pliers". eyes-number of pliers is 1.

chapter WHEE TRY

the WHEE TRY sign is a thing. "A WHEE TRY sign is here--[if sco-wheat-rye is true]it'd be cheery even if you hadn't gotten free samples from it.[else]free samples![end if]". description is "[if sco-wheat-rye is false]The [owners] see you looking at the WHEE TRY sign, which is covered with different types of bread. 'You won't just get a small free sample. You'll get a lot more... of what? Well, you have to guess.'[else]You look at the WHEE TRY sign again. Man, those were some good free samples.'[end if]". eyes-number of WHEE TRY is 53. eyes-rule of WHEE TRY is pre-wheat-rye rule.

chapter wheat rye

there is a eatworthy stewitem called the wheat and rye bread. description is "Looks tastier and healthier than bleached old white bread.". eyes-number of bread is 1.

invtext of rye bread is "[if sco-wheat-rye is false]more than one type of bread[else]the wheat and rye from [deli][end if]".

part groan odes

Groan Odes is a room in universal. printed name is "[if sco-grow-nodes is false]Groan Odes[else]Numb Bursting Number String[end if]". "[if sco-grow-nodes is false]Groan odes ring out everywhere. What would this place be like without them? Are they repressing happy people? Covering something more sinister?[else]The groan odes have ceased, replaced by numbered nodes, from which emanate eerie silence interrupted by occasional menacing beeping and mechanical voice mentioning destruction is IMMINENT and all that sort of thing.[end if][paragraph break]Only passage back up seems safe.". eyes-number of Groan Odes is 45. eyes-rule of groan odes is pre-grow-nodes rule.

chapter numbered nodes

the numb bursting number string is scenery. "It's a long string of numbered nodes: node one, node two, and up past a hundred. You feel helpless at the thought of disabling it all. Thus, a numb bursting number string. But maybe one of the nodes is especially vulnerable!". printed name is "numb bursting number string/numbered nodes". eyes-number of number string is 24. eyes-rule of number string is pre-no-date rule.

understand "numbered/nodes" and "numbered nodes" as number string when number string is touchable.

chapter hell pin

the help in hell pin is a thing. printed name is "help-in-hell pin". description is "It's a bit corny, with two angels imposed on a smiley face. But it was given in good spirit, and [if throne is visited]it helped you get to [here-in of throne][else]might help somewhere[end if].". eyes-number of hell pin is 1.

part Turbo Tours

to say got-egg: say "You got the [egg] and berries from the Farm Isles[if player is in bowl ditch], and you tweaked Turbo Tours, too[end if]. Nothing is left back that way"

check going west to Turbo Tours: if sco-barn-open is true and sco-tour-boaters is true, say "[got-egg]." instead;

Turbo Tours is a room in universal. printed name is "Turbo Tours[if sco-tour-boaters is true] (now with tour boaters)[end if]". "You can go back east, but there are also tours that cross water to the south--or go far beyond.". eyes-number of Turbo Tours is -47. eyes-rule of Turbo Tours is pre-tour-boaters rule.

check going south to Farm Isles:
	if sco-barn-open is true, say "[got-egg]." instead;
	say "[one of]Your prime oar really is prime! You effortlessly navigate your way south[or]Your prime oar holds up nicely as you steer the stark raft back south[stopping].";
	move stark raft to Farm Isles;
	move prime oar to Farm Isles;

chapter star craft

the star craft is a thing in Turbo Tours. "A huge star craft rests here. No way you'll be able to afford it -- something more modest, perhaps.". description is "Impressive but way out of your price range.". eyes-number of star craft is 54. eyes-rule of star craft is pre-stark-raft rule.

check taking raft: say "You can just go south or north as needed." instead;

chapter stark raft

the stark raft is a thing. "The stark raft, fitted with the prime oar, [if player is in farm isles]here can take you back north to [tours][else if farm isles is unvisited]here can take you across the water to the south to somewhere new[else if sco-barn-open is true]sits here. It served you well, but you don't need to go back across the water. You've toured where you need to[else]here can lead you back south to the Farm Isles[end if].". description is "It's plain, but sturdy enough, you think, and your prime oar will help steer it[if far miles farm isles is visited] back south[end if].". eyes-number of stark raft is -1.

part Far Miles Farm Isles

Far Miles Farm Isles is a room in universal. eyes-number of Farm Isles is 1. "Well, maybe not that far. Perhaps it's just named that way to seem more exotic.". printed name is "Far-Miles Farm Isles".

after printing the locale description for Far Miles Farm Isles when sco-find-rinks is true and sco-bear-respond is false:
	say "You can go back south to Berries Pond, too.";
	continue the action;

check going north in farm isles: raft-tours;

check going south in farm isles when sco-bear-respond is true: say "Berries Pond is off limits now. You got enough there." instead;

chapter bar nopin

the Bar Nopin is a thing in Far Miles. "A Bar, Nopin['], sits here trying to look elite. Perhaps you don't need to get there but somewhere else. It has a fine drinks ad attached to it.". description is "Unfortunately, with the fine drinks sign on it, it's probably out of your price range, so it won't help with the alcohol requirements in your list. [if booze-score is 2]No big deal. You found enough[else if booze-score is 1]But you've found some already, which is nice[else]Perhaps there is easier booze to find elsewhere[end if].". printed name of Bar Nopin is "Bar, Nopin[']". eyes-number of bar nopin is 44. eyes-rule of bar nopin is pre-barn-open rule.

chapter fine drinks

the fine drinks ad is scenery in Far Miles. "It simply says FINE DRINKS as an advertisement for the bar. Which would contradict the nopin['], but I guess it is trying to be elite.". eyes-number of fine drinks ad is 45. eyes-rule of fine drinks is pre-find-rinks rule.

chapter egg of a guv

the egg of a guv is a thing. printed name is "Egg of a Guv[']". description is "It's only one egg, but boy is it impressive! The barn (open) really did you a favor, but all the same, you'll need more than one for your little shopping list.". eyes-number of egg of a guv is 1.

part Berries Pond

Berries Pond is a room in universal. eyes-number of Berries Pond is 47. eyes-rule of Berries Pond is pre-bear-respond rule. "All sorts of vegetation is here. Alas, the bushes seem to have been picked clean. Maybe someone or something who knows more about the area could help you. Or you could just go back north to the more populated part of the farm isles."

check going to berries pond when sco-bear-respond is true: say "That would be greedy." instead;

there is a stewitem called a variety of berries. description of variety is "A bunch of berries you know and a bunch you don't. [if sco-barn-open is false]You could give some away and still have enough for a big gathering[else]There's still lots left, even after transacting with the barn[end if].". eyes-number of variety is -1. invtext of variety is "red and blue and purple food".

book south branch

after printing the locale description when player is in an unvisited ordroom:
	say "[i][bracket][b]NOTE[r][i]: you can get back here with [b][which-south of location of player][r][i] to save time. No need to revisit [fort].[close bracket][r]";
	continue the action;

after printing the locale description when gs-nn-noted is false and (player is in a rotroom) and (player is not in an ordroom):
	now gs-nn-noted is true;
	say "[i][bracket][b]NOTE[r][i]: you can use [b]NN[r][i] to go back to Ur-Branch from here or (spoiler alert) any other room in the south not directly connected to Ur-Branch. Also, you can use [b]R[r][i] or [b]RR[r][i] to rotate between these rooms once you've found them all.[close bracket][i][line break]";
	continue the action;

part Tube Rod

Tube Rod is an ordroom in r-south. rmord of Tube Rod is 3. eyes-number of Tube Rod is 35. printed name is "[if sco-too-broad is false]Tube/Rod[else]'Grasp, Ace: Grass' Space[end if]". eyes-rule of Tube Rod is pre-too-broad rule. "[if sco-too-broad is false]Further passage south is blocked by a huge nondescript wall with a single tube/rod sticking out of it[else]With the tube/rod burst, it's much more green and relaxing and expansive here. You can now go south as well as back north[end if].". roomdirs of Tube Rod is "NE/S". south-useful-rule of tube rod is south-tube-rod rule.

this is the south-tube-rod rule:
	if sco-damp-ink is true and sco-claim-it is true, the rule fails;
	the rule succeeds;

chapter tuberodscen

the tuberodscen is privately-named scenery in Tube Rod. "Well, you can't do much with the wall, which is pretty boring and large. The tube/rod, on the other hand ...". printed name is "tube/rod". eyes-number of tuberodscen is 35. eyes-rule of tuberodscen is pre-too-broad rule.

understand "wall" and "tube/rod" and "tube rod" as tuberodscen when tuberodscen is touchable.

part Too Dark Tude Ark

Too Dark Tude Ark is an ordroom in r-south. rmord of Too Dark is 1. printed name of tude ark is "[if sco-ho-langour is true]'Ugh?! Lo, a Glow'[else]Too-Dark [']Tude Ark[end if]". "[if sco-ho-langour is false]Your attitude can't help grow dark as you wonder if it was really worth running all the way here from the north. A brief look shows nothing ahead. You found some shortcuts and hideouts so you can go back north safely, but that's no fun[else]It's no longer too dark here. There's not much here, but at least it's not too dark. Oh, there's a passage south as well as one back north[end if].". eyes-number of Too Dark Tude Ark is 1. roomdirs of Tude Ark is "NE/D/U/S". south-useful-rule of tude ark is south-tude-ark rule.

this is the south-tude-ark rule:
	if sco-belt-rusted is true, the rule fails;
	the rule succeeds;

the whole anger is a thing in Tude Ark. "Whole anger swirls around here, consuming your every thought.". description is "How can one describe anger? It's there, and it's tough to shake.". eyes-number of whole anger is 27. eyes-rule of whole anger is pre-ho-langour rule.

part Sage Oaks

Sage Oaks is an ordroom in r-south. rmord of Sage Oaks is 2. "Sage oaks stand here, [if sco-say-jokes is false]glaring at your unworthy self. [else]almost nodding with respect for you. [oaks-south][end if]You can always just go back north[if sco-say-jokes is false], too[end if].". eyes-number of Sage Oaks is 35. eyes-rule of Sage Oaks is pre-say-jokes rule. roomdirs of Sage Oaks is "X TRAP/U/NE/S". south-useful-rule of Sage Oaks is south-sage-oaks rule.

this is the south-sage-oaks rule:
	if sco-tea-leaves is true and sco-cold-rum is true, the rule fails;
	the rule succeeds;

to say oaks-south:
	if sco-gas-pouch is false:
		say "You tried to go past the oaks to the south before, but something in the air made you gasp 'ouch.' ";
	else:
		say "The way south is clear now you proved yourself twice to the oaks. ";

sageoakscen is a plural-named privately-named impressable sentient in Sage Oaks. they are scenery. description of sageoakscen is "The sage oaks offer [if sco-say-jokes is false]no great hint as to how to impress them or weaken their will to block you[else if sco-gas-pouch is false]no indication they do, or don't, actually want you to go south[else]something almost nearing respect for you[end if].". printed name is "the sage oaks". eyes-number of sageoakscen is 35. eyes-rule of sageoakscen is pre-say-jokes rule.

understand "sage/oaks" and "sage oaks" as sageoakscen.

check going south in Sage Oaks when sco-gas-pouch is false and sco-say-jokes is true:
	say "You go south again and back off quickly once you gasp 'ouch.'" instead;

chapter gas pouch

the gas pouch is a thing. description is "It's a translucent sturdy pouch that once held gas, currently [if sco-damp-ink is true]full with damp ink[else]empty[end if].". eyes-number of gas pouch is -1.

part Dam Pink

Dam Pink is a rotroom in r-south. printed name is "Dam, Pink". "You can only go back north. The dam is oozing various liquids, though [if sco-damp-ink is true]you got what you wanted[else][liquid-need][end if].". eyes-number of Dam Pink is 43. eyes-rule of Dam Pink is pre-damp-ink rule.

to say liquid-need:
	choose row with check-rule of pre-damp-ink rule in table of main oronyms;
	if think-cue entry is true:
		say "you figured what you wanted but didn't have a container";
	else:
		say "you're not sure what you want or need yet";

chapter clay mitt

the clay mitt is an uneatable stewitem in Dam Pink. "A clay mitt lies here. Perhaps it was dislodged when you broadened the tube/rod, or perhaps it was just lying around forever. But you'd feel weird just [b]TAKE[r]ing it.". description is "[if sco-claim-it is false]It's not yours, so you can't take it. You guess. Well, as things stand[else]It should protect your hands against all but the fieriest of oven flames[end if].". eyes-number of clay mitt is 52. eyes-rule of clay mitt is pre-claim-it rule.

invtext of clay mitt is "[if sco-claim-it is false]hand protection from the heat[else]you got the clay mitt for hand protection[end if]".

check taking clay mitt when clay mitt is in Dam Pink: say "You don't feel bold enough to. Just taking isn't enough." instead;

chapter damp ink

the damp ink is a thing. description is "It's ink, dark and wet in the gas pouch. There's enough to write a lot, though you doubt you'll need to.". eyes-number of damp ink is -1. eyes-rule of damp ink is pre-damp-ink rule.

part Scribe Room

Scribe Room is a rotroom in r-south. "You can only go back north.". eyes-number of Scribe Room is 45. eyes-rule of Scribe Room is pre-scry-broom rule.

after printing the locale description for scribe room when player has broom and sco-pro-sweeping is true:
	say "You hand the broom back to the scribes. They're very impressed you can do ... that sort of work. They pull out something else: a bell (trusted). It's big and impressive, but it's a bit tarnished, which each of them mentions in an offhand way, just in case you know anyone who might be able to help. Or you're good at other things besides sweeping. You seem multi-talented, they say.";
	moot broom;
	move bell trusted to Scribe Room.

chapter scribes

the scribes are plural-named sentients in Scribe Room. "[one of]Unsurprisingly,[or]Those[stopping] scribes continue to do their scribing thing and occasionally bustle about to assist others['] scribing.". description is "They look very impressive and uninterested in you [if sco-belt-rusted is true]now you've transacted[else if sco-scry-broom is true]unless you can help with the bell[else]unless you have something for them[end if].". eyes-number of scribes is 1.

chapter broom

the broom is a thing. description is "It's not a magical sort of broom, which may be all for the best. But it's not broken or run-down, either. The scribes weren't big on extreme cleanliness.[paragraph break][if sco-pro-sweeping is false]The scribes asked you to return it once you were done with it[else]Maybe you should return it to the scribes, as they asked, now you're done with it[end if].". eyes-number of broom is 1.

chapter bell trusted

the bell trusted is a thing. "The bell (trusted) the scribes showed you now sits off to the side.". description is "It looks like it's seen a bit of use and is not as bright as it could be. The scribes may have trusted you to see it, but they may also have hoped you were the sort to make things look nicer, since you traded for the broom.". eyes-number of bell trusted is 46. eyes-rule of bell trusted is pre-belt-rusted rule.

chapter belt rusted

the belt rusted is a thing. printed name is "belt (rusted)". description is "It might look quite nice if it were spruced up a bit.". eyes-number of belt rusted is -1.

part Dust Which Does Twitch

Dust Which Does Twitch is a rotroom in r-south. printed name is "[if sco-pro-sweeping is false]Dust Which Does Twitch[else]Teal Eaves[end if]". "[if sco-pro-sweeping is false]You can only go (and see) back north[else]You can see where you are now. Apparently a place called Teal Eaves. It's teal on the outside and inside[end if].". eyes-number of Dust Which is 1.

chapter prose weeping

the prose weeping is a thing in Dust Which Does Twitch. "The sound of prose, weeping, rises from all the dustiness.". description is "You really don't want to examine or analyze it. It would be nice to get rid of.". indefinite article of prose is "some". eyes-number of prose weeping is 38. eyes-rule of prose weeping is pre-pro-sweeping rule.

chapter coal drum

the coal drum is a thing. "[if sco-cold-rum is true]You've found what you needed from the coal drum here.[else]A coal drum sits here. What could be inside it?". description is "Plenty dirty. [if sco-cold-rum is true]You don't want to go digging for more than the cold rum you found[else]Perhaps there is something beneath the coal, but you might have to figure what, before digging[end if].". eyes-number of coal drum is 43. eyes-rule of coal drum is pre-cold-rum rule.

chapter cold rum

the cold rum is an alcoholic stewitem. indefinite article of cold rum is "some". description is "It seems pretty classy. Or it seems like people who drink it can fool themselves it's classy. Good enough.". eyes-number of cold rum is -1.

chapter tea leaves

some tea leaves are an ingredient stewitem.  description is "All sorts. They smell different and, you imagine, will taste different.". eyes-number of tea leaves is -1.

invtext of tea leaves is "[if sco-tea-leaves is false]nonalcoholic refreshment[else]the tea leaves will provide all sorts of flavors of tea[end if]".

part rotations

nextroom of Tube Rod is Tude Ark. nextroom of Tude Ark is Sage Oaks. nextroom of Sage Oaks is Tube Rod.
nextroom of Dam Pink is Scribe Room. nextroom of Scribe Room is Dust Which. nextroom of Dust Which is Dam Pink.

book up area

part Throne Ow Throw Now

Throne Ow Throw Now is a room in universal. printed name is "[if sco-use-it is true]Final (?) and Fine Land[else]Throne Ow-Throw-Now[end if]". description is "[if sco-lie-fruits is true]You've gotten what you need from here[else if sco-use-it is true]With the throne gone, the oppression has lifted[else]Weird, you thought hell was usually down, but your hell pin is protecting you here, you think[end if]. You can only go back down to the Ur-Branch.". eyes-number of Throne Ow Throw Now is 32. eyes-rule of Throne Ow Throw Now is pre-use-it rule.

after printing the locale description for throw now when extra-turns > 0:
	say "Your extra speed doesn't seem to help here. You don't need to run from the throne. You need an item of power, not just one to help you survive like [the pin].";
	continue the action;

chapter thronescen

thronescen is a privately-named thing in Throne Ow Throw Now. printed name is "the throne". understand "throne" and "throne ow" as thronescen. eyes-number of thronescen is 32. eyes-rule of thronescen is pre-use-it rule. "Horrid orders come from the throne, pulling you to it ... 'YOU! SIT! YOU! SIT!'". description is "The way it crackles, you're pretty sure you don't want to sit in it, as it would hurt whether or not it would throw you."

chapter Life Roots

the Life Roots are a thing. "Life Roots have been revealed from where the throne was. And yet, they seem a bit artificial. They aren't that impressive, and maybe they're hiding something that proves them less than they claim to be.". description is "they glow a bit too much, as if they are trying hard to seem like the source of ALL life.". eyes-number of Life Roots is 36. eyes-rule of Life Roots is pre-lie-fruits rule.

chapter assortment

there is a stewitem called the fruit and veggie assortment. description is "Just about everything you could want.". eyes-number of assortment is -1.

invtext of assortment is "[if sco-lie-fruits is false]well, just all sorts of fruits and vegetables[else]the assortment of fruits and vegetables from [here-in of Throne Ow][end if]".

volume unsorted

[intentionally left blank just in case]

volume warp on modification(s)

check warponing when player is not examined and sco-a-drawer is false:
	if word number 1 in the player's command is not "wp":
		say "[one of]The war pawn wags a finger, then cups its hand over both ears, as if to say: listen, and don't use me too early![or]The war pawn cups its hands over bothe ears again. This must be a hint about the first point.[stopping]." instead;

check warponing when lucent row is in mine and player is in mine and gs-warn-mine-pawn is false:
	now gs-warn-mine-pawn is true;
	say "[b]NOTE[r]: if you are trying to figure out the lucent row, it's an optional puzzle, which the war pawn ignores. Continue anyway?";
	unless the player yes-consents:
		say "Okay, next time you use the war pawn in the mine, will not get this nag." instead;

volume going out

understand the command "o" as something new. understand "o" as outside.

understand the command "out" as something new.
understand the command "exit" as something new.

check going outside when player is in an ordroom:
	if the room south of location of player is not nowhere:
		consider the south-useful-rule of location of player;
		if the rule succeeded, say "Ambiguous. You can go north or south." instead;
	move player to ur branch instead;

check going outside:
	unless the room gone to is nowhere, continue the action;
	let wd be number of worthwhile directions;
	if wd > 1, say "Out is ambiguous here. There are [wd in words] worthwhile ways to leave: [list of worthwhile directions]." instead;
	if wd < 1, continue the action;
	let myd be a random worthwhile direction;
	if myd is not outside:
		say "Mapping outside to [myd], since it is the only worthwhile direction to go.";
		try going myd instead;

volume regular verbs

book entering

the find what to enter rule is not listed in any rulebook.

check entering ship: say "It's the pun tweaker's. You're not invited." instead;

check entering great inn: say "You don't need a break, and you couldn't afford the rates." instead;

check entering bar: say "If you tried to get loaded, you'd soon feel low, dead." instead;

check entering tube rod: say "Well, that might cause it to explode, if you could fit. But it might kill you, too. Maybe there's another less risky way..." instead;

rule for supplying a missing noun when entering:
	if great inn is touchable:
		now noun is great inn;
	else if bar nopin is touchable:
		now noun is bar nopin;
	else if tube rod is touchable:
		now noun is tube rod;
	else:
		say "You can't see anything to enter.";
		reject the player's command;
	continue the action;

check going inside when room gone to is nowhere:
	say "Trying to enter, since no room is inside...";
	try entering instead;

book inventory

the UT specific inventory rule is listed instead of the print standard inventory rule in the carry out taking inventory rulebook.

after printing the name of den specs when taking inventory: say " (from your dense pecs)";

after printing the name of gas pouch when taking inventory: if sco-damp-ink is true, say " (full of damp ink)";

to say x-aight: say "[b]X[if gs-using-known is false] AIGHT[end if][r]"

carry out taking inventory (this is the UT specific inventory rule):
	now all things carried by player are marked for listing;
	now all startthings are not marked for listing;
	now all hintthings are not marked for listing;
	now Aw Lug All Ugh is not marked for listing;
	if number of ughlistable things is 0:
		say "Your Aw-Lug-All-Ugh has nothing special in it[if number of carried stewitems > 0], except what you've found for [aight][end if].";
	else:
		say "First, helpful stuff [ara] didn't explicitly ask for, in your [ugh]:[line break]";
	now all stewitems are not marked for listing;
	now dense pecs are unmarked for listing;
	now damp ink is not marked for listing;
	list the contents of the player, with newlines, indented, including contents, listing marked items only, giving inventory information, with extra indentation;
	let cas be number of carried alcoholic stewitems;
	say "[line break]";
	if all necessary stewitems are discovered:
		say "You've got all the items in [aight]! Surely you must be almost done now.";
	else if nds > 0:
		say "[aight-count] listed in [aight]";
		if nds > last-nds-x:
			say ". That's [nds - last-nds-x in words] more than the last time you checked with [x-aight]";
		say ".";
	else:
		say "[aight], which you got to start, lists items [ara] asked for. You don't have any yet.";
	tip-herb-use;
	let nch be number of carried hintthings;
	if nch > 0, say "[line break]You also have [the list of carried hintthings] [if nch is 1]is[else]are[end if] to help you solve puzzles.";
	if cas > 0 and sco-malt-hour is false, say "[line break]You've got more than enough alcohol in the form of [the list of carried alcoholic stewitems], so maybe you can use [if cas is 1]it[else]them[end if] to bribe someone or a group of people.";
	if player has dense pecs and sco-den-specs is false, say "[line break]You're infused with dense pecs from all your carrying stuff and using the prime oar. They may be useful in some other weird way.";
	if player has er jot, say "[line break]You [if core-score > 10]still [end if]have that [er jot] flopping about, too. It [if er jot is examined]didn't seem too important, though, so you can drop it[else]probably only had stuff to help you get started, which [jot-usefulness][end if].";
	now gs-taken-inventory is true;
	the rule succeeds;

report taking inventory when player has dense pecs and sco-den-specs is true and gs-pecs-forget-note is false:
	say "You still have some dense pecs left over from making the den specs, but ... they're a part of you. You're almost bored of having them. So I won't mention them again.";
	now gs-pecs-forget-note is true;
	continue the action;

to say jot-usefulness:
	if branch is visited:
		say "you don't need any more";
	else:
		say "might help you figure how to get going"

after printing the name of gray tin when taking inventory:
	if sco-pie-crust is false:
		say " (empty)";
	else:
		say " (full of pie crust)";

volume semi-regular/often used verbs

book eye stuff

chapter eyeing

check eyeing tuberodscen: say "You get no readout until the eyes focus on the tube/rod.";

report eyeing aight when sco-summon-cheese is false:
	say "Hmm, can't be the whole document. Must be one thing in particular you can pick off at any time.";
	continue the action;

report eyeing team:
	say "Hmm, that seems a bit short. Can't be them. Maybe what they're saying.";
	continue the action;

report eyeing orc lurk foreboding:
	say "Just to check, it's not 'foreboding' to focus on, here. That's too general.";
	continue the action;

check eyeing owners when sco-wheat-rye is true: say "You've done everything you can here for [the owners]." instead;

report eyeing owners:
	say "Perhaps you need to change [if sco-dell-eastern is true]more [end if]things around [the owners], though.";
	continue the action;

report eyeing toon:
	say "Hmm. Seems a bit long for 'too neat.' Whatever's on the toon, you'll need to decipher it.";
	continue the action;

check eyeing broom: say "The eyes show nothing. Perhaps it's better the broom isn't magical. You saw [i]Fantasia[r]. It could probably help you clean up somewhere, though." instead;

report eyeing number string:
	say "Well! That's a low reading for a numbered string, or numbered nodes. Perhaps one node is particularly weak, and that's the one to work on.";
	continue the action;

report eyeing thronescen:
	say "[throne-eyes].";
	continue the action;

to say throne-eyes: say "Wow! That's a short reading. Maybe it's not the throne but what it's saying"

chapter eyering

report eyering in ur branch when sco-herb-ranch is false:
	say "Your head is assaulted by the sound of a silent letter or two as you eye the general area.";
	continue the action;

report eyering when player is in pea stalks and sco-peace-talks is true:
	say "Hmm. Looks like some detail about this place to explore, if you're curious.";
	continue the action;

report eyering when player is in throne and thronescen is in throne:
	say "[throne-eyes].";
	continue the action;

book listening

check listening (this is the game specific ambient sound rule):
	if aid roar is touchable, try examining aid roar instead;
	if forest team is touchable, say "Annoying banter from [the team]. They continued to knock you and knock you, well, verbally." instead;
	if nigh swarm is touchable, say "The nigh swarm buzzes aggressively, which leaves you feeling slightly frozen.";
	if player is in isle:
		if freddie is in isle and tweaker is in isle, say "Occasional squabbling between Sir Freddie and the pun tweaker." instead;
		if pun churn is in isle, say "The pun tweaker is treating you to a steady pun-churn." instead;
	if player is in deli stern, say "The [owners] talk between themselves how to drum up more business." instead;
	if player is in scribe room, say "The occasional scratching of quills, or philosophical discussion." instead;
	if player is in groan odes, say "[if sco-grow-nodes is false]The groan odes continue.[else]From the numbered nodes, threats of imminent destruction. But when?[end if]" instead;
	if player is in bore dread and sco-malt-hour is false, say "Occasional threatening mumbles from the maul tower." instead;
	if player is in throne ow, say "[if thronescen is in throne ow]'YOU! SIT! YOU! SIT!'[else]Quiet now.[end if]" instead;
	if location of player is pea stalks, say "Quiet and serene." instead;

book attacking

check attacking:
	if noun is sageoakscen, say "You're not even violent to roar 'WEEP, OAKS' with wee pokes." instead;
	if noun is bar nopin, say "Bar fight? Barf, aight?" instead;

book drinking

the block drinking rule is not listed in any rulebook.

check drinking:
	if noun is punch urn, say "Well, you'd need water for the powder, but you realize once you got water, it'd probably be a lot healthier than this stuff." instead;
	if noun is tea leaves, say "But they aren't properly prepared! And they don't need to be, in this game." instead;
	if noun is an alcoholic stewitem, say "Get yourself together, man! Now is not the time![paragraph break]Anyway, uh, ... I hope I didn't drive you to drink with an unfair puzzle." instead;
	say "You don't need to drink anything in this game." instead;

book eating

check noteating:
	if noun is Terra Blade, say "You're doing great! No reason to commit Seppuku." instead;
	if noun is a sentient, say "Canny? Can nibble? Canny? Bull..." instead;
	if noun is blah string or noun is felt, say "Well, full of fiber, I guess..." instead;
	if noun is dough pail, say "But it's raw. Eww." instead;
	if noun is egg of a guv, say "But then you wouldn't have an egg at all." instead;
	if noun is life roots, say "High in fiber, but ... well, there's food beneath them." instead;
	if noun is an alcoholic stewitem, say "Alcohol shouldn't replace meals." instead;
	if noun is meat rack, say "'Eh, meat? Aim: eat,' you say to yourself, looking forward to enjoying it once everyone's there for the meal." instead;
	if noun is an eatworthy stewitem, say "Some host you are. Wait until the meal is started." instead;
	if noun is ingredient stewitem, say "Ugh ... needs preparation." instead;
	if noun is uneatable stewitem, say "Can't eat that, but it'll help prepare food." instead;
	say "That's probably not edible." instead;

book talk (redefined from standard Inform usage in Oronym Core)

check ting:
	if noun is Trike West, say "You say, meek, a 'Me? [']Kay!'" instead;
	if noun is meh spot, say "It may make you say 'meh' a lot, but it's not going to say anything back." instead;
	if noun is beast wrong, say "It can't and doesn't want to make chit chat. You wouldn't enjoy it anyway." instead;
	if noun is forest team, say "They generally talk you down and continue to find ways to knock you." instead;
	if player is in beach and freddie is in beach:
		if noun is pun tweaker or noun is Sir Freddie:
			say "You don't have the skills to talk out a detente." instead;
	if noun is pun tweaker, say "[if sir freddie is in beach]Not in the mood to chat with Sir Freddie around[else if sir freddie is moot]You punch at pun chat but can't keep up with the pun tweaker's pun-churn[else]Not very punny with the ship broken[end if]." instead;
	if noun is sageoakscen, say "[if sco-say-jokes is false]The oaks just don't seem to be bothered with regular talk[else]You wonder if you should say 'Forge, oaks, for jokes,' or ask for kludge-oaks that might clue jokes. But the oaks don't seem interested in talking[end if]." instead;
	if noun is fey loners, say "They [if sco-dell-eastern is false]grouse about how the salesman lied that this deli had location[else if gs-deli-dell-left is false]grouse about how business had better pick up, now that the location's less dismal[else if gs-deli-ale-left is false]moan about business picked up slightly, but still not enough[else if gs-deli-beef-left is false and toon is in deli]point to the new toon they made[else if sco-wheat-rye is false and whee try is in deli]point to the WHEE TRY sign, eager to give some handouts[else]talk about how good business has gotten[end if]." instead;
	if noun is scribes, say "The scribes more or less ignore you while continuing their scribing. [if sco-scry-broom is false]You've offered them nothing, yet.[else if sco-pro-sweeping is false]You haven't figured what to do with their broom.[else]Why, they gave you that belt (rusted) and broom, and that should really be enough![end if]" instead;
	if noun is Sir Freddie, say "[if player is in copse]'Ho, pawn! Hope on!'[else]A depressing outpouring of over-cheery surfing lingo. Harmless, but yeah. You see the pun tweaker's point.[end if]" instead;
	if noun is not a sentient, say "No response. You should usually talk to living things, or things that can respond as if they were living." instead;
	say "An awkward silence ensues, mostly brought about by how ... I forgot to code something. Please let me know or file a bug report!" instead;

rule for supplying a missing noun when ting:
	let NS be number of sentients in location of player;
	if NS is 0:
		say "Nobody else to talk to.";
		the rule fails;
	if NS > 1:
		say "That's ambiguous, between [the list of sentients in location of player], so you'll need to specify a subject.";
		the rule fails;
	now noun is random sentient in location of player;
	continue the action;

book climb (for fun)

understand "climb" as climbing. understand "climb [thing]" as climbing.

the block climbing rule is not listed in any rulebook.

rule for supplying a missing noun when climbing:
	if player is in pile:
		if spikes are in pile:
			now noun is spikes;
			continue the action;
		if sco-hike-up is true:
			say "You already made your way to the top.";
		else:
			say "Climb isn't the right verb here to reach the cup.";
		reject the player's command;
	if player is in sore dark and ark is in sore dark:
		now noun is ark;
		continue the action;
	abide by the climb-teal-eaves rule;
	say "Nothing to climb safely here.";
	reject the player's command;

check climbing:
	if noun is garden tree, say "It already shooed [the team]. Don't make it shoo you." instead;
	if noun is spikes, say "Too sharp. You need to get rid of them." instead;
	if noun is ark, say "The ark is too steep and slippery." instead;
	if noun is ladder, say "Better to specify what to reach with the ladder." instead;
	abide by the climb-teal-eaves rule;
	say "You see nothing to climb here[if sco-rope-ladder is true], even with the help of your rope ladder, which you never need to use explicitly[end if]." instead;

this is the climb-teal-eaves rule:
	if player is not in dust which, continue the action;
	if sco-pro-sweeping is false, continue the action;
	if sco-tea-leaves is true, say "You already climbed for tea leaves." instead;
	say "There's something to climb for here, but you need to say what it is[if sco-rope-ladder is false] and have something to climb on[end if]." instead;

book swearing

report swearing obscenely for the first time:
	say "[i][bracket]There's no optional section for this, as there was in [b]Why Pout[r][i]. Sorry.[close bracket][r][line break]";
	continue the action;

book xyzzying

carry out xyzzying: say "A hollow voice booms 'Sequel? Seek well? See? QUELL!'[paragraph break]But don't worry, it's just hollow, period." instead;

volume meta-verbs

book about

carry out abouting:
	say "[this-game] was released for IFComp 2025. It reuses a lot of code from [wp], my IFComp 2024 entry. It uses the same sort of progress mechanic, but the two are different in nature and story.";
	say "[line break]As in 2024, I had bigger projects that didn't make it. This time, I found the title during IFComp, and hings built slowly.";
	say "[line break]Like most of my games, [this-game] rates merciful on the Zarfian cruelty scale, which only means it's not intended to get in an unwinnable state. There are also no deaths, not even joke deaths.";
	say "[line break][email] is my email if you wish to send transcripts or whatever, or you can report bugs there or at the GitHub site mentioned above, [ghbase]/us-too. I plan to release a post-comp version, and if enough bugs pile up after that, I may release another one.";

report abouting:
	if player is in house well:
		say "Once you figure what to say to the lawyers (a short phrase with short words,) you will have the opportunity to uncover a small in-game document with my general relatively non-spoilery thoughts on [this-game]'s design. It's not necessary, of course, but attaining the bonus point may help gear you up for the other puzzles.";
	else if loose intro is moot:
		say "You already discarded the loose intro that discusses design and such for [this-game], so you'll need to restart to read it again.";
	else if player has loose intro:
		say "You can [if loose intro is examined]re-[end if]read the loose intro to get more creative details on [this-game].";
	else:
		say "The lucent row [here-in of Mine Ooh] contains, if you look at it right, something with more subjective details and opinions. It's a bonus point, but it might help prepare you for the rest of the game.";
	continue the action;

book credits

carry out creditsing:
	say "[b]GAME-SPECIFIC THANKS[r]:[paragraph break]";
	say "Thanks to my testers, Onno Brouwer, Wade Clarke, Olaf Nowacki, Melvin Rangasamy, Daniel Stelzer and Tabitha. With my development schedule, I put them in a time crunch, and they found a lot. This let me add some niceties, though I also made mistakes implementing some of their suggestions.";
	say "A DiBianca, a longtime IFComp co-competitor, sent (not for the first time) a nice useful transcript on day 1 of IFComp. (Psst! If you like my stuff, you may love his.)";
	say "Anyone who helped with [wp] probably helped here indirectly, because I reused a lot of the code or ideas. Like the hint item several suggested.";
	say "[line break]The cover art is my fault, and my fault alone.";
	say "The [south-dirs] were likely inspired by a game which, if I told you the name, would spoil [i]that[r] game. I hate it when things like that happen, because I'd like to give them direct credit. It's in the 'best short games' poll on IFDB, and rightly so.";
	general-thanks;

to say south-dirs:
	if sign ought is off-stage:
		say "additional branch directions (sort of) late in the game";
	else:
		say "directions S/SS/SSS[if dust which is visited or dam pink is visited or scribe room is visited] and NN[end if]"

book options

optionsing is an action out of world.

understand the command "options" as something new.
understand the command "option" as something new.
understand the command "opts" as something new.
understand the command "opt" as something new.

understand "options" as optionsing.
understand "option" as optionsing.
understand "opts" as optionsing.
understand "opt" as optionsing.

check optionsing when options-found is 0: say "You haven't found either option that affects gameplay. One appears when you try to visit blocked-off areas, and one appears when you get each half of a solution right on different occasions[one of]. They don't appear at the start because I didn't want to overload you with potentially useless options early on[or][stopping].[paragraph break]However, if you know them from another playthrough, you can use them." instead;

carry out optionsing:
	say "You have found/learned of [if options-found is two]both[else][options-found in words] of two total[end if] options:[paragraph break]";
	if gs-know-blah-cough is true:
		say "[b]BLAH COUGH[r] disables the automatic block-off for completed hub branches. [b]BLOCK OFF[r] enables it. Allowing completely free movement is currently [on-off of opt-blah-cough].";
	else:
		say "You haven't found how to toggle revisiting blocked areas.";
	if gs-know-think-well is true:
		say "[b]THINK WELL[r] shows a full point-scoring command if you've guessed each part. [b]THIN QUELL[r] (default) turns it off. This option is currently [on-off of opt-think-well].";
	else:
		say "You haven't found how to toggle revealing a point-scoring command you got by halves.";

chapter blahcoughing

blahcoughing is an action out of world.

understand the command "blah cough" as something new.

understand "blah cough" as blahcoughing.

carry out blahcoughing:
	say "You can [if opt-blah-cough is true]already[else]now[end if] revisit completed branches.";
	now opt-blah-cough is true;
	now gs-know-blah-cough is true;
	the rule succeeds;

chapter blockoffing

blockoffing is an action out of world.

understand the command "block off" as something new.

understand "block off" as blockoffing.

carry out blockoffing:
	say "You have [if opt-blah-cough is false]already[else]now[end if] blocked off revisiting completed branches.";
	now opt-blah-cough is false;
	now gs-know-blah-cough is true;
	the rule succeeds;

book verbs

check verbsing when player is in house:
	say "Most point-scoring commands, including the one to get you out of this house, are two words long. They are clued by something in the environment. The two you must find now are relatively simple and short.";
	say "[line break]There will be more detail once you're past the house. For now, I'll just note [this-game] has a limited parser, mostly allowing the various directions, [b]INVENTORY[r] ([b]I[r] for short,) [b]THINK[r], and verbs that help you use hint items.";
	the rule succeeds;

carry out verbsing:
	say "[this-game] uses a reduced parser, though you need to guess point-scoring commands. You move in standard directions, with diagonals only in [if ur branch is visited][ur branch][else]a hub room just above[end if]. While [b]X (something)[r] is useful for insight for what you need to do with an item, [b]X[r] on its own lets you see a list of what you need and have, for general progress, though [b]I[r] still inventories helper items not requested by [ara].";
	say "[line break]Many standard parser verbs also are unnecessary, though they may give hints and flavor. [b]TAKE[r] is one example: items are implicitly taken as you need them and used up, though to help you avoid temptation, the game makes you [b]TAKE[r] hint items and lets you [b]DROP[r] them for good.";
	say "[b]O[r] is a shortcut for the outside direction. If there's only one worthwhile direction to leave the current room, it goes that way, though if there are more than one, it just lists exits.";
	say "[b]T[r]/[b]TALK[r]ing to NPCs (subject usually not necessary) or [b]LISTEN[r] may provide additional cues. Additionally, [b]EAT[r] and [b]CLIMB[r] may be marginally useful or amusing.";
	say "[line break]While [b]SCORE[r] gives your game-score (also listed in the upper right), [b]THINK[r] may be more useful to track point-scoring commands that you found that will work later, or commands you got half-right.";

report verbsing when options-found > 0:
	say "You can use [b]OPTIONS[r] to refresh the game option[options-found in words][if options-found > 1]s[end if] you found.";
	continue the action;

report verbsing when (south-sorted or gs-noted-r is true) and south is not branchdone:
	say "[if south-sorted]N2/NN/2N kicks you back to Ur-Branch from very south locations[end if][if south-sorted or gs-noted-r is true], and [end if][if gs-noted-r is true]R/RR can rotate among the three near [or-far]south locations[end if].";
	continue the action;

to say or-far: if number of unvisited rotrooms is 0, say "or far "

book versions

carry out versioning:
	say "Release 1 was sent to IFComp.org on August 28, 2025, for publishing on September 1st.";
	say "Release 2 is slated for (hopefully) very soon after IFComp. It will include a holdall where you can drop off the list items, as well as specific cluing rejects for some of the trickier puzzles.";

volume ending tweak(s)

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see points [b]MISSED[r]" 	true	"missed"	track missed points rule	--

this is the track missed points rule: [remember, one bonus point for not using the war pawn]
	if nonpawn-left:
		say "[one of]This list will spell out the solutions (except for the pawn) if you type [b]MISSED[r] again[or]Here are the specific commands you missed[stopping]:[paragraph break]";
	if sco-try-quest is false, say "--[one of]You could have riffed on your own name for a small but useless emotional boost[or]You could've said [b]TRY QUEST[r] to yourself at any time[stopping].";
	if sco-loose-intro is false, say "--[one of]The lucent row could be changed[or]You could've made a [b]LOOSE INTRO[r] fall from the lucent row in [mine][stopping].";
	if sco-meh-skit is false, say "--[one of]The mess kit let you do something silly[or]You could've performed a [b]MEH SKIT[r] once you uncovered the mess pot/kit[stopping].";
	if sco-pea-pod is false, say "--[one of]There was an optional food item in Pea Stalks[or]You could've discovered a [b]PEA POD[r] in Pea Stalks when you wondered if you could peep odd things, for a bit more food[stopping].";
	if sco-punch-urn is false, say "--[one of]You could've acted on the pun tweaker's pun churn after getting rid of Sir Freddie[or]You could've asked for a [b]PUNCH URN[r] around the pun tweaker's pun churn[stopping] (must restart to achieve).";
	if sco-tour-boaters is false, say "--[one of]Turbo Tours could've used a rebrand[or]You could've made Turbo Tours more relaxed by renaming it [b]TOUR BOATERS[r][stopping].";
	if opt-blah-cough is false:
		if blocked-bonus > 0:
			say "    ([b]BLAH COUGH[r] will open [if blocked-bonus is 1]the[else]any[end if] blocked-off area you need to visit.)";
	nope-check;

chapter final real ending

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
--	true	"ace two"	poker cheat rule	--

this is the poker cheat rule:
	if gs-found-real-win is false:
		say "You manage to discover a few aces and twos that weren't there, when you need them. You're not sure where they go, or where they came from. But the lawyers catch on, smiling. You start winning, and before it's over, they say 'Well done. A little extra for you. [ara] had a magic gem, one passed down only to those who were fully worthy. It provided insight into people's hearts.'[paragraph break]You ask what it could be.[paragraph break]They show you. You nod politely, saying it's very nice.[paragraph break]'It is a whinge-you'll-win jewel. It causes greedy people to overreact. Some will say they must have it. Some will say they own better jewels. Some will say they deserve it more than So-and-So. Even if they can't see it or ar near it, they will show their seedy side. Some may manage to keep the mask up for a while.'[paragraph break]You mention you're not sure you want that kind of power, and they say--well, yes, it's no fun to carry around. But it will be there when you need it. Why, [ara] used it to help sort out ... certain family members. Not exclusively. But to confirm her suspicions. For better or worse. You shake hands with the lawyers again, and they leave. You receive the jewel a week later.";
	else:
		say "You already cheated to win, but you did so because it was the right thing to do. You have everything you want. Don't get greedy. What would [ara] say?";
	now gs-found-real-win is true;

The hack to say one word right rule is listed before the standard respond to final question rule in for handling the final question.

This is the hack to say one word right rule:
	let temp be 0;
	if the player's command includes "ace", increment temp;
	if the player's command includes "two", increment temp;
	if temp is 1:
		if gs-found-real-win is false:
			say "An interesting idea forms halfway in your mind.";
		else:
			say "There is/was no other way to cheat.";
		the rule succeeds;

rule for deciding whether all includes slice eyes when player is in mine ooh:
	if eyes are in mine ooh, it does;
	it does not;

rule for deciding whether all includes war pawn when player is in mine ooh:
	if pawn is in mine ooh, it does;
	it does not;

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
