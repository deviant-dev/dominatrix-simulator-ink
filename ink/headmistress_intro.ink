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
/perform slave walks_away
+[wait 3]


-/character headmistress sit_on_desk
Foolish slaves require immediate rectification.
As you now require.

-(meet_headmistress)

{
    - headmistress_intro == 1:
        Do you know who I am?
    - else:
        Welcome back.
}

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

- You are newly arrived and already in trouble.
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
Alight onto my desk 
and assume a position upon 
your hands and knees.

//player needs to teleport onto the desk

- (get_on_desk)
- (get_on_desk_tries)

/perform idle

- (get_on_desk_fail)
+ [pose:get_on_desk] -> HoldPose(-> get_on_desk_fail, -> get_on_desk) ->
+ {get_on_desk_tries < 2 } [timeout] -> get_on_desk
//+ {get_on_desk_tries >= 2 } [timeout]
+ {get_on_desk_tries >= 2 } [timeout] -> CheckIfInterested -> get_on_desk
// + [no] -> CheckIfInterested -> get_on_desk

- 
/perform amused
Hands should be at least shoulder width apart 
with fingers splayed.
+[wait 2]

/perform amused
- The back must be delicately arched, 
presenting the most ideal access 
to the object of discipline -
the ass.
/perform paddle_desk
+[wait 2]

-In this way, the ass is presented for punishment.
+[wait 2]

-/perform satisfied
Knees should be sufficiently apart 
to allow for robust gazing upon
the nether regions.

//she should walk around from the side of the desk to the front of the player when she asks if they accept their punishment

/perform walk_to_front_of_desk
Do you accept that you must be punished?
-(ask_punish_ready)
+[yes]
~ obey++
/perform arm_raise
Then we shall begin.

//curtains raise and sounds of crowd fill the room

+[no]
~ obey--
/perform suspicious
You will be unable to remain here 
if you do not submit to your punishment.
It will be over quickly and your compliance will
please the Goddess.
Shall we continue with your punishment?

    ++[yes]
    ~ obey++
    Excellent choice. Let us begin.
    /perform arm_raise
    //curtains raise and sounds of crowd fill the room
    
    ++[no]
    ~ obey--
    //should this add another punishment marker?
    Make haste from my sight!
    I will not tolerate fools.
    /perform point_to_door
    // force player to leave scene - exit game??
    
+[timeout] 
You have had enough time to think.
Your punishment must begin.
Do you agree?
-> ask_punish_ready


- +[wait 2]
/perform walk_to_back_of_desk
All care must be taken to assure the errant slave 
is well-presented for punishment.
//murmurs of appreciation from audience

As previously noted, the back must be arched,
the fingers splayed, and the knees spread wide enough
to provide access to all areas of possible punishment.

- +[wait 2]

- Do you feel you are well-presented, {player_name}?

+[yes]
~ obey++
Not quite, but you demonstrate adequate effort. 

+[no]
~ obey--
Then rectify yourself at once.
//provide more instructions?

-(punish_instruct)
/perform circle_desk
Disobedient behavior must be corrected immediately
upon infraction.

It must be firm, swift, and 
leave an indelible mark upon the body and soul.
/Perform tap_paddle
//comments from audience
+[wait 2]

-To receive a punishment with the utmost grace and decorum,
the subject of discpline must hold their head high and
breath smoothly and calmly through the nose.

/perform tap_paddle
+[wait 2]

-The muscles of the ass must remain relaxed between swats
to provide an exceptionally pleasing display when they clench
in response to being struck.
/perform tap_paddle
+[wait 2]

-Feet must remain flat upon with no obscene curling of the toes.
/perform tap_paddle
//audience remarks
+[wait 2]

-
/perform walk_to_front_of_desk
Are you prepared to demonstrate your display of grace 
during punishment for the assesment of our observers today?
//audience sounds of appreciation

+[yes]
~ obey++
A fitting response.


+[no]
~ obey--
Think twice before you continue on this course of disobedience.
You earn no rewards until this act of suffering has been completed.


- -> END

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
