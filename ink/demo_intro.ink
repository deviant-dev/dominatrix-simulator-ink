=== demo_intro ===

/scene bedroom.flash1
/prop orgy_audio
/character goddess
/perform angry
/wait 3
/scene bedroom.flash2
/wait 3
/scene bedroom.flash3
/wait 4

- (jump)

/scene bedroom.intro
/prop -orgy_audio
/lock move-approach
/character goddess

/perform fake_annoyed

- Oh... How rude. #01
And I was having so much fun. #02
Ah, well... #03

/perform amused

How did you get in here? #04
Did Mistress Yuki-Onna let you in? #05

/perform unhappy

- (ask_entry)
+ [yes] I've told that girl not to interrupt me #06
    when I'm playing with my toys. #07
+ [no] No? Another curious guest, then. #08
+ (ask_entry2)[timeout]
    {cycle:
        - It's a simple question. Nod your head for yes. #09
        Shake your head for no. #10
        - I asked you a question. #11
        - Hurry up. I'm waiting. #12
        - I don't like it when people make me wait. #13
        - What makes you think you can ignore me? Answer me. #14
    }
    {shuffle:
        - Did my Yuki let you in? #15
        - Did that naughty little maid let you in? #16
        - Did a dark-haired maid bring you to me? #17
        - Yuki-Onna is disobeying me again. She let you in, didn't she? #18
    }
    -> ask_entry
+ [distracted] -> PayAttention -> ask_entry2

- /perform unhappy

Well, you can't stay here. #19


// The 'isVideo()' Jump lets use record the trailer video bits in isolation.
// Must have 'IsVideo' checked in the StoryTeller component.
{ isVideo() :
    - -> DemoEnd
}


Only the truly exceptional may stay in my presence. #20
And you are <i>obviously</i> not exceptional. #21
Are you? #22

- (ask_exceptional)
+ [yes]
   /perform laugh
   Oh how absolutely delusional you are! #23
   You are no where near worthy. #24
    
+ [no]
    Now, that is a very honest answer. #25
    Perhaps I will give you a chance to prove your worth. #26
    
+ (ask_exceptional_again)[timeout]
    Do you think you're exceptional? #27
    -> ask_exceptional
    
+ [distracted!] -> PayAttention -> ask_exceptional_again

- /perform amused

/wait 

I bet that turned you on. Didn't it?<br/>Spying on me and my precious pets. #28
- (ask_spying)
+ [yes]
  Of course it did. #29
  I bet you'd like to see more of that, wouldn't you? #30
  Perhaps you'd like to be one some day? #31
  
  ++ [yes]
    Well too bad. You haven't earned that privilege yet. #32
    
  ++ [no] -> spying_no

+ (spying_no)[no]
    No? How disappointing. #33
    I don't think you're going to be much fun at all. #34
    
+ (ask_spying_again)[timeout]
    Be honest now. Spying on me turned you on, didn't it? #35
    -> ask_spying
    
+ [distracted!] -> PayAttention -> ask_spying_again

- /perform bored

I bet you have no idea where you are, do you? #36
 
- (ask_where)

+ [yes]
    /perform laugh
    You think you know where you are? #37
    You have no clue. #38
    
+ [no]
    /perform agreement
    Of course you don't. #39
    
+ (ask_where_again)[timeout]
    /perform annoyed 
    Well... do you have any idea where you are? #40
    -> ask_where
    
+ [distracted!] -> PayAttention -> ask_where_again

- You're just a tiny little mouse stuck in a maze. #41
You may never find your way out again. #42
This is no ordinary house, mind you. #43

/wait

Even so. You are here now. #44
And you won't be going anywhere for quite a while. #45

That means I'll have to give you a name. #46
Would you like that? #47
  
+[yes] 
    /perform pleased
    Well, well. I must say I'm pleased. #48
    I think we are off to a good start. #49
    Don't you? #50
    ++[yes]
        Keep this up and I might just take an interest in you. #51
    
    ++[no] -> DemandApology ->
        Now... as for a name. #52
    
+ [no]
    /perform amused
    Too bad. #53
    Whatever name you had before is gone. #54

+ [timeout]
    Cat got your tongue? #55
    Well... I will ignore that for now. #56

- I will name you... {player_name}. #57
I expect you to respond to {player_name} from now on. #58
Until you earn a new name, that is. #59
Do you understand? #60

+ [yes] -> GoodJob ->
    I am pleased. #61

+ [no]
    Let's try this again. Your name is now {player_name}. #62
    Everyone who meets you will refer to you as {player_name}. #63
    One day, if you are very <i>very</i> good, you may earn a new name. #64
    But for now, your name is {player_name}. #65

+ [timeout]
    Well, perhaps you're a little overwhelmed. #66
    That's to be expected. #67
    Just remember your name is {player_name} #68
    until I decide otherwise. #69

- /wait

I really must send you away soon. #70
But first, let me have a good look at you. #71

// The second label here is for tracking how many times we've passed by here.
- (inspection)
- (inspection_tries)

/perform amused

{cycle:
    - Come here. #72
    - Come here, {player_name}. #73
    - I <i>said</i> come here! #74
}

/unlock move-approach

// Here we adjust the [timeout] option based on how many times we've been through here.
+ [move] -> GoodJob ->
+ { inspection_tries < 3 } [timeout] -> inspection
+ { inspection_tries >= 3 } [timeout] -> CheckIfInterested -> inspection
+ [distracted!] -> PayAttention -> inspection

- /lock move-approach

I'm always curious about our new guests. #75
I so rarely take the time to inspect them personally #76
when they first arrive. #77
This is a bit of an unexpected treat. #78
You don't mind, do you? #79

+ [yes] How unfortunate\. #80
    Honestly, I don't even know why I bother asking. #81
+ [no] Mmm... I think someone might be enjoying this. #82
+ [timeout] That's alright. It's not like you have a choice anyway. #83
+ [distracted!] -> PayAttention -> stand_straight

- (stand_straight)
- (stand_straight_tries)

{cycle:
    - Stand up straight. #84
    - Come on. Lift that head a bit for me. #85
    - Chin up, little one. Let me inspect you. #86
}

// Here we adjust the [timeout] option based on how many times we've been through here.
+ [pose:raised_chin]
+ { stand_straight_tries < 3 } [timeout] -> stand_straight
+ { stand_straight_tries >= 3 } [timeout] -> CheckIfInterested -> stand_straight
+ [no] -> CheckIfInterested -> stand_straight

- (circle_player)

-> GoodJob ->

/perform circle_player

That's it. #87
Push your shoulders back and arch that lovely spine. #88
Stick that pretty little ass out where I can see it. #89

/wait for:circle_player

Now then... #90

/perform points_down

// The second label here is for tracking how many times we've passed by here.
- (kneel)
- (kneel_tries)

{cycle:
    - Kneel. #91
    - Get down on your knees. #92
    - You belong on your knees. Down. #93
}

// Here we adjust the [timeout] option based on how many times we've been through here.
+ [pose:kneel]
+ { kneel_tries < 3 } [timeout] -> kneel
+ { kneel_tries >= 3 } [timeout] -> CheckIfInterested -> kneel
+ [no] -> CheckIfInterested -> kneel

- -> GoodJob ->

Mmmmm... so much delicious flesh to work with. #94
Strong bones and muscles. #95
You'll need to be flexible, as well. #96
Oh yes... there is much here we can work with. #97

/perform crosses_arms

// The second label here is for tracking how many times we've passed by here.
- (present_self)
- (present_self_tries)

Arms behind your head. #98
Thrust your chest out. Knees apart. #99
I want to see you present yourself more fully to me. #100

// Here we adjust the [timeout] option based on how many times we've been through here.
+ [pose:present_yourself]
+ { present_self_tries < 3 } [timeout] -> present_self
+ { present_self_tries >= 3 } [timeout] -> CheckIfInterested -> present_self
+ [no] -> CheckIfInterested -> present_self

- -> GoodJob ->

Look at you. So obedient. So ready. #101
You may go. But first, a reward. #102
You may show me how much you appreciate my instruction. #103
/perform present_foot
You may bow before me and kiss my feet. #104

- (kiss_feet)

Bow down, kiss, then back to your pose like a good little {player_name}. #105

+ [pose:kiss_feet] -> GoodJob ->
+ [timeout] -> kiss_feet
+ [no] No?! #106
    /perform confused
    Turning down such a reward. You are a strange one. #107

- That's enough. #108
You might just prove useful one day, #109
but you'll need much more training first. #110
Off to Mistress Yuki-Onna with you. #111
I'm sure she can show you the ropes, so to speak. #112

-> DemoEnd
// -> demo_tutorial

= DemoEnd

/perform snap_fingers
/scene void

/scene bedroombroken

/wait 1.5

/character domina-echo-voice

Bye for now, {player_name}. #113

/wait 5

/scene LogoRoom.EndScreen

-> END

= GoodJob

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

- { cycle:
    - Where was I? Oh yes... #134
    - That's better. Let's continue. #135
    - Good {player_name}. #136
    - Let's try that again. #137
    - As I was saying... #138
    - Now... Let's start over. #139
}

->->


// This loop allows the player to test the Dominatrix and get kicked out if she is pushed too far via 'CheckIfInterested'.
= DemandApology

/wait

{ cycle:
    - Don't pretend to toy with me. #140
    - I am not amused. #141
    - Such behaviour is unacceptable. #142
    - You are trying my patience, worm. #143
}

You will apologize this instant. #144
Tell me: Do you beg for my forgiveness? #145

+ [yes] -> GoodJob ->
+ [no] -> CheckIfInterested ->

- You are forgiven. #146
Don't let it happen again. #147
->->


// This loop makes sure the player is actually interested in continuing the scene.
= CheckIfInterested

// This checks to see if we've already been here.
// If so, we jump down to 'check_test' below.
{CheckIfInterested > 1: -> check_terse}

These are the sorts of tasks demanded of you here. #148
- (check_again)
Are you willing to simply do as I say like a good {player_name}? #149

+ [yes] -> check_yes
+ [no]
+ [timeout] -> check_again

- (check_terse) Really? #150
We will need to be rid of you if you can't perform. #151
Your willingness to serve is, after all, why you are here. #152
So I'll ask one last time: #153
Are you willing to perform for your goddess? #154

+ [yes] -> check_yes
+ [no]

- Then away with you. #155
Perhaps another time when you are ready to learn your place. #156

// Leaves the demo early.
-> DemoEnd

- (check_yes) -> GoodJob ->
There is hope for you yet. #157

->->
