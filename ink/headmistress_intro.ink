=== headmistress_intro ===
{ web: -> select_gender -> }

/scene office.spank_slave
/character headmistress
/equip wood_paddle
/character slave crying

{ web:
    <blockquote><i>You are disoriented for a moment as everything turns black and the scene around you changes.</i></blockquote>

    <blockquote><i>You stand inside a spacious Victorian office with a large wooden desk and several sets of bookshelves lining the room. Before you stands a lean and lengthy woman with dark skin and an ample bosom. Her face is stern and her eyes placid as she looks you up and down...</i></blockquote>

    + [Start]
}

~ obey = 0 
-
/character headmistress
/perform spank slave 

+[wait 3]

- /perform spank slave
You are an unruly, undisciplined, low-born miscreant.
+[wait 3]

- /perform spank slave
I will not abide by your disobedience.
+[wait 3]

- /perform spank slave
You *will* behave according to your station or 
find yourself unable to rest on your backside for a week.
/character slave pleading
I'm sorry, Headmistress.
I'll be good. I promise!
Oh, please Headmistress!
+[wait 3]

- /character headmistress
/perform spank slave
That will be sufficient for today.
+[wait 3]

- /perform smooth_skirt
Compose yourself immediately.
Depart with grace and pride,
as befits a slave in this house.
/character slave stands
Yes, Headmistress. 
Thank you for guiding me, Headmistress.
/perform walks_away
+[wait 3]


-/character headmistress sit_on_desk
Foolish slaves require immediate rectification.
As you now require.

-(meet_headmistress)
Do you know who I am?

+[yes]
~obey++
Very good. 
Then you know why you're here.
Yes?
    ++[yes]
    ~obey++
    Excellent.
    No need to waste time.
    
    ++[no]
    ~obey--
    Come, come.
    Don't play dumb.
    It is a waste of my time.
    
+[no]
~obey--
/perform tap_paddle
I think you do.
You just heard that slave say it.

+[timeout]
Speak up.
-> meet_headmistress

- You are newly arrived and already
you are in trouble.
/perform tap_paddle
Entering the Goddess's chambers unbidden.
This is a serious infraction.
/perform tap_paddle
+[wait 2]

-You will be punished.
And you will do it with grace.
I will teach you how.
Just like I do with all the new slaves.
/perform stand_up
+[wait 2]

-First, you will learn how to present yourself
for punishment.
/perform point_paddle_at_desk
Climb onto this desk and 
get onto your hands and knees.
//player needs to teleport onto the desk

- (get_on_desk)
- (get_on_desk_tries)

/perform amused

Hands shoulder width apart.
Arch your back and present your ass.
/perform unhappy
Spread those knees wider.
  
/perform idle

- (get_on_desk_fail)
+ [pose:get_on_desk] -> HoldPose(-> get_on_desk_fail, -> get_on_desk) -> GoodJob
+ {get_on_desk_tries < 2 } [timeout] -> get_on_desk
//+ {get_on_desk_tries >= 2 } [timeout]
+ {get_on_desk_tries >= 2 } [timeout] -> CheckIfInterested -> get_on_desk
// + [no] -> CheckIfInterested -> get_on_desk


-> END

= GoodJob

//rewrite these for Headmistress
/perform caress_thigh

{ shuffle:
    - There's a good {player_name}. #114
    - What a good little {player_name}. #115
    - That's my {player_name}. #116
    - Aren't you the sweetest little thing. #117
    - Very nice. #118
    - That will do just fine. #119
    - Quite satisfying. #120
    - Mmmm. I like that. #121
    - Someone is being a good {player_name}. #122
    - Well done. #123
    - That's very pleasing. #124
}

->->

= PayAttention

//rewrite these for Headmistress
/perform amused

{ cycle:
    - Look at me when I'm speaking to you, {player_name}. #125
    - I expect your eyes on me at all times, #126
    unless I tell you otherwise. #127
    - Did I give you permission to look elsewhere? #128
    - Didn't anyone ever teach you to look at people #129
    when they're speaking to you? #130
    - Pay attention to me when you're in my presence. #131
    - You're trying my patience. Pay attention. #132
    - Eyes on me, {player_name}. #133
}

+ [pay-attention]
+ [timeout] -> PayAttention

/perform thoughtful

- { cycle:
    - Where was I? Oh yes... #134
    - That's better. Let's continue. #135
    - Good {player_name}. #136
    - Let's try that again. #137
    - As I was saying... #138
    - Now... Let's start over. #139
}

->->

= CheckIfInterested

{CheckIfInterested > 1: -> check_terse}

/perform unhappy

Are you too good to take a punishment, {player_name}? 
Obey instructions.
- (check_again)

/perform idle

+ [yes] -> check_yes
+ [no]
+ [timeout] -> check_again

- (check_terse) Well?

/perform angry

You merely drag out the invetitable with your delay.

/perform annoyed

Are you going to continue to play the reluctant, {player_name}?

+ [yes] -> check_yes
+ [no]

- /perform bored
Out of my office, heathen.
I have no time for your shenanigans.
-> out_heathen

- (check_yes) -> GoodJob ->
/perform confused
There is hope for you yet. #157

-> out_heathen

= out_heathen

/perform paddle_desk

/scene foyer


->->
