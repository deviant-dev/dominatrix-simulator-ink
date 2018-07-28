=== demo_intro ===
/scene bedroom.flash1
/wait 1
/scene bedroom.flash2
/wait 1
/scene bedroombroken.flash3
/wait 1.5

- (jump)

/scene bedroom.intro
/lock move-approach
/character goddess

/perform fake_annoyed

- Oh... How rude. #100
And I was having so much fun. #101
Ah, well... #102

/perform amused

How did you get in here? #01
/wait
Did Mistress Yuki-Onna let you in? #02

/perform unhappy

- (ask_entry)
+ [yes] I've told that girl not to interrupt me #03
    when I'm playing with my toys. #04
+ [no] No? Another curious guest, then. #05
+ (ask_entry2)[timeout] #06
    {cycle:
        - It's a simple question. Nod your head for yes. #07
        Shake your head for no. #08
        - I asked you a question. #09
        - Hurry up. I'm waiting. #10
        - I don't like it when people make me wait. #11
        - What makes you think you can ignore me? Answer me. #12
    }
    {shuffle:
        - Did my Yuki let you in? #13
        - Did that naughty little maid let you in? #14
        - Did a dark-haired maid bring you to me? #15
        - Yuki-Onna is disobeying me again. She let you in, didn't she? #16
    }
    -> ask_entry
+ [distracted] -> PayAttention -> ask_entry2


- /wait

/perform unhappy

Well, you can't stay here. #17
Only the truly exceptional may stay in my presence. #18
And you are <i>obviously</i> not exceptional. #106
Are you?#107

- (ask_exceptional)
+ [yes]
   /perform laugh
   Oh how absolutely delusional you are!
   You are no where near worthy.#22
    
+ [no]
    Now, that is a very honest answer.#23
    Perhaps I will give you a chance to prove your worth.
    
+ [timeout] -> ask_exceptional_again
+ [distracted!] -> PayAttention -> ask_exceptional_again

- -> ask_exceptional_continue
    
- (ask_exceptional_again)
    Do you think you're exceptional?
-> ask_exceptional

- (ask_exceptional_continue) /perform amused

/wait 

I bet that turned you on. Didn't it?<br/>Spying on me and my precious pets. 
- (ask_spying)
+ [yes]
   Of course it did.
   I bet you'd like to see more of that, wouldn't you?
   ++ [yes]
    Too bad. You haven't earned that privilege yet.
    ++ [no]
    No? Well, that's disappointing. 
   
+ [no]
   No? Well, that's disappointing.
   I don't think you're going to be much fun at all.
    
+ [timeout]
    Spying on me turned you on, didn't it? 
    -> ask_spying
    
+ [distracted!] -> PayAttention -> ask_exceptional

/perform bored

/wait
- (ask_where)
I bet you have no idea where you are, do you?
 
+ [yes]
    /perform laugh
    You think you know where you are?
    You have no clue.
    
+ [no]
    /perform agreement
    Of course you don't.
    You're just a tiny little mouse stuck in a maze.
    You may never find your way out again.
    
+[timeout]
    /perform annoyed 
    Well... do you have any idea where you are?
    ->ask_where
    
+[distracted!] -> PayAttention -> ask_where


- This is no ordinary house.

- / wait    

Even so. You're here now.
And you won't be going anywhere for a while.

- (give_name)
That means I'll have to give you your new name.
Would you like that?
  
+[yes] 
    /perform pleased
    Well, well. I must say I'm pleased.
    I think we are off to a good start.
    Don't you?
    ++[yes]
    Keep this up and I might just take an interest in you.
    
    ++[no]
    /perform annoyed
    Don't pretend to toy with me.
    I am not amused.
    
+ [no]
    /perform amused
    Too bad. 
    Whatever name you had before is gone.

+ [timeout]
    Cat got your tongue? #26
    That's alright. For now. #27
    
+ [distracted!] -> PayAttention -> ask_where

- 
I think...{player_name} will do. #28
I expect you to respond to {player_name} from now on. #29
Until you earn a new name, that is. #30
Do you understand? #31

+ [yes] -> GoodJob ->
    I am pleased you understand. #32

+ [no]
    Let's try this again. Your name is now {player_name}. #33
    Everyone who meets you will refer to you as {player_name}. #34
    One day, if you're good enough, you may earn a new name. #35
    But for now, your name is {player_name}. #36

+ [timeout]
    Well, perhaps you're a little overwhelmed. #37
    That's to be expected. #38
    Just remember your name is {player_name}  #39
    until I decide to change it. #40

- /wait

I'm going to have to send you away soon. #41
But first, let me have a good look at you. #42

- (inspection)
/perform amused

/unlock move-approach

Come here. #43

+ [move] -> GoodJob ->
+ [timeout] Don't be shy.-> inspection #44
+ [distracted!] -> PayAttention -> inspection

- I'm always curious about our new guests. #45
I rarely take the time to inspect them personally #46
when they first arrive. #47
This is a bit of an unexpected treat. #48
You don't mind, do you? #49

+ [yes] How unfortunate. #50
    Honestly, I don't even know why I bother asking. #51
+ [no] Mmm... I think someone might be enjoying this. #52
+ [timeout] That's alright. It's not like you have a choice anyway. #53
+ [distracted!] -> PayAttention -> stand_straight

// make this more instructive. tell the player to kneel. kiss her feet. give them an out option if they don't pose using timeout or no.
- (stand_straight)

{cycle:
    - Stand up straight. #54
    - Come on. Lift that head a bit for me. #55
    - Chin up, little one. Let me inspect you. #56
}

+ [pose:raised_chin]
+ [timeout] -> stand_straight

- (circle_player)

-> GoodJob ->

/perform circle_player

That's it. #57
Push your shoulders back and arch that lovely spine.  #58
Stick that pretty little bottom out. #59
/wait


/wait for:circle_player

/perform points_down
- (kneel)

{cycle:
    - Kneel. #54
    - Get down on your knees. #55
    - You belong on your knees. Down. #56
}
Mmmmm... so much delicious flesh to work with. #60
Strong bones and muscles. #61
You'll need to be flexible, as well. #62
Oh yes... there is much here we can work with. #63

+ [pose:kneel]
+ [timeout] -> kneel

-> GoodJob ->

/perform crosses_arms

- (present_self)
    - Arms behind your head.
    Thrust your chest out.
    I want to see you present yourself more fully to me.

//timeout needs to be revised. may need cycle of options for present-self or timeout repeats command

+ [pose:present_yourself]
+ [timeout] -> present_self

-> GoodJob ->

- That's enough. #64
You might just prove useful one day, #65
but you'll need much more training first. #66
Off to Mistress Yuki-Onna with you. #67
I'm sure she can show you the ropes, so to speak. #68

/perform snap_fingers #69
/scene void
/character domina-echo-voice

Bye for now, {player_name}. #70

/wait 2

-> demo_tutorial

= GoodJob

{ shuffle:
    - There's a good {player_name}. #71
    - What a good little {player_name}. #72
    - That's my {player_name}. #73
    - Aren't you the sweetest little thing. 
    - Very nice.
    - That will do just fine.
    - Quite satisfying.
    - Mmmm. I like that.
    - Someone is being a good {player_name}.
    - Well done.
    - That's very pleasing.
}

->->

= PayAttention

{ cycle:
    - Look at me when I'm speaking to you, {player_name}. #75
    - I expect your eyes on me at all times, #76
    unless I tell you otherwise. #77
    - Did I give you permission to look elsewhere? #78
    - Didn't anyone ever teach you to look at people #79
    when they're speaking to you? #80
    - Pay attention to me when you're in my presence.
    - You're trying my patience. Pay attention.
    - Eyes on me, {player_name}.
    }

+ [pay-attention]
+ [timeout] -> PayAttention

- { cycle:
    - Where was I? Oh yes... #82
    - That's better. Let's continue. #83
    - Good {player_name}. #84
    - Let's try that again.
    - As I was saying...
    - Now... Let's start over.
}

->->