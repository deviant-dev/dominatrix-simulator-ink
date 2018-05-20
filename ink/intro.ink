VAR player_name = "none"

<blockquote><i>NOTE: This is a quick test for the script that runs the game's introduction.</i></blockquote>

<blockquote><i>Two nude statues kneel before you with outstretched hands, one male and one female. Which would you choose?</i></blockquote>

- (options)

+ {player_name != "boy"}[Touch the male statue] You touch the male statue.
    <blockquote><i>The male statue disappears and you now have hands with thick masculine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The female statue reappears.</i></blockquote>
    }
    ~ player_name = "boy"
    -> options
    
+ {player_name != "girl"}[Touch the female statue] Female 
    <blockquote><i>The female statue disappears and you now have hands with slender feminine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The male statue reappears.</i></blockquote>
    }
    ~ player_name = "girl"
    -> options
    
+ {player_name != "none"}[Open the door.] You open the door.

- <blockquote><i>You have just stepped into a darkened room with a storm thundering outside. Lighting flashes and you see a devilish figure locked in a sexual exchange with two other figures, moaning filling your ears. The lightning flashes again, filling your eyes with a new, this time, tortuous exchange. Again, it flashes, and you find those same figures in a new embrace - each scene wildly different from one another. Without warning, the storm abates, the lightning ceases, and before you stands a Demoness. She speaks to you...</i></blockquote>

+ [Introduction] -> intro

=== intro ===

- How did you get in here?
...
Did Yukiko let you in?

+ [yes] I've told that girl not to interrupt me 
    when I'm playing with my toys.
+ [no] Just another curious guest, hrm?
+ [timeout] Nevermind. It's not important.
+ [distracted] -> PayAttention -> cant_stay


- (cant_stay) ...
Well, you can't stay here. 
Only the willing may stay in my presence.
And you're not ready yet.

- (ask_where) ...
Do you know who you are?
 
+ [yes]
    Then you're luckier than most.
    Even so... everyone who comes here gets a new name eventually.
    
+ [no]
    Of course you don't.
    No one does when they first arrive.
    I'll have to call you something.
    
+ [timeout]
    Cat got your tongue?
    I'll have to call you something.
    
+ [distracted] -> PayAttention -> ask_where

  
- Hrm... For now, {player_name} will do.
I expect you to respond to {player_name} from now on.
Until you earn a new name, that is.
Do you understand?

+ [yes]
    Good {player_name}. I am pleased you understand.

+ [no]
    Let's try this again. Your name is now {player_name}.
    Everyone who meets you will refer to you as {player_name}.
    One day, if you're good enough, you may earn a new name.
    But for now, your name is {player_name}.
    
+ [timeout]
    Well, perhaps you're a little overwhelmed.
    That's to be expected.
    Just remember your name is {player_name} until I decide to change it. #pause


- I'm going to have to send you away soon.
    But first, let me have a good look at you.

- (inspection) 
 Come here.

+ [move] There's a good {player_name}.
+ [timeout] Don't be shy.-> inspection
+ [distracted] -> PayAttention -> inspection


- I'm always curious about our new guests.
I rarely take the time to inspect them personally
when they first arrive.
This is a bit of an unexpected treat.  
You don't mind, do you?

+ [yes] How unfortunate.
    Honestly, I don't even know why I bother asking.
+ [no] Mmm... I think someone might be enjoying this.
+ [timeout] That's alright. It's not like you have a choice anyway.
+ [distracted] -> PayAttention -> circle_player
    
    
- (circle_player)
    
Stand up straight. #circles around player
Push your shoulders back and arch your back 
so that pretty little bottom of yours stands out.
Mmmmm... lots of delicious flesh to work with.
Strong bones and muscles.
You'll need to be flexible, as well.
Yes... hrm... there is so much here to work with.

#stops in front of player
Well, off to Yukiko with you.
Time to start preparing you.

#snaps fingers
Bye for now {player_name}.

Next up: House Intro with Yukiko.

FIN
-> END

=== PayAttention ===

{ cycle:
    - Look at me When I'm speaking to you, {player_name}.
    - I expect your eyes on me at all times,
    unless I tell you otherwise.
    - Did I give you permission to look elsewhere?
    - Didn't anyone ever teach you to look at people 
    when they're speaking to you?
    - Pay attention to me when you're in my presence.
}

+ [paying_attention]
+ [timeout] -> PayAttention

- Where was I? Oh yes...

->->
