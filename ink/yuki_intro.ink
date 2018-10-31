=== yuki_intro ===

/scene foyer
/character yuki
/equip feather_duster

{ web:
    -> select_gender ->
    
    <blockquote><i>You are disoriented for a moment as everything turns black and the scene around you changes.</i></blockquote>

    <blockquote><i>You stand inside a large Victorian foyer with a sweeping staircase and several sets of doors leading off of it. The room is fairly well lit, but all of the doors are shrouded in shadows. Before you stands a lithe, young woman dressed in a maid's uniform. Beaming a bright smile, she greets you...</i></blockquote>

    + [Start]
}

- (start) Oh! There you are!

/perform bounces

I’ve been waiting for you.
I'm  Mistress Yuki-Onna.

/perform serious

It’s my job to make sure all new arrivals are processed 
and taught the basics of how to behave 
while you’re a guest in Goddess’s home.

/wait

- (new_guest)
Do you know why you're here?

 + [yes]
    I don't see how you'd know that already.
    Someone must have told you.
    
    /perform sighs
    
    Well, let's go through the basics anyways, 
    to make sure you have the right information. 
    
    /wait
    
+ [no]
    Well, duh!
    You're not supposed to know.
    That's the fun part!
    
    /perform clasp_hands
    
+ [timeout]
    Hello-o
    Anybody home?
    /perform cocks_head_to_left
    -> new_guest
    
+ [distracted] -> PayAttention -> new_guest

- (house_rules)
You are a guest of Threshold House.
Well, we call it a house, but it's not really one...

/perform thoughtful
/perform serious

All guests must follow the rules
or they will not be allowed to stay.

- (learn_rules)
Would you like to know what the rules are?

+ [yes]
    /perform excited
    Oh goody! I love telling people the house rules!

+ [no]
    /perform disappointed
    Don't be a pouty baby.
    You have to learn the rules or you can't be a good {player_name}!

+ [timeout]
    /perform confused
    You aren't listening very well.
    -> learn_rules
    
+ [distracted] -> PayAttention -> learn_rules
    
- (two_rules)

[wait]

/perform bounces
The rules are simple!
And there are only two of them!

/perform one_finger

Answer questions when you're asked.

/perform two_fingers

Follow directions when they're given.

/perform open_arms_shrug

Disobey and be punished.
Obey and be rewarded.

/perform clasp_hands

- (easy_rules)
Easy, right?

+ [yes]
    I know! Our Goddess is so kind!

+ [no]
    Oh! Don't worry. You'll learn fast!

+ [timeout]
    Are you still listening?
    -> easy_rules
    
+ [distracted] -> PayAttention -> easy_rules

- /perform squirm
You are a cute one! I really hope you do well here!
I'm only allowed to play with with the good ones!

- (good_yuki)
Do you want to be a good {player_name}?

+ [yes]
    /perform bounces
    Yay! We'll have so much fun together!

+ [no]
    /perform pouty
    Oh darn. I really hope you'll change your mind.

+ [timeout]
    Hello? Anybody home?
    -> good_yuki

+ [distracted] -> PayAttention -> good_yuki

- (nega_interruption)

/character nega saunter
Oh please! You're always such a good girl,
never having any fun.
Don't you want to live a little?
Bend the rules once in a while and really let loose?

/character Yuki scoff
Ugh.

/character nega approach_yuki
//use whisper voice
I know you do. 
I know you're deepest, darkest secrets.
Remember?

+ [wait 5]
 
- /character Yuki
You just stop that right now, Nega-Yuki!
I want my own room someday. 
There's no way I'm breaking the rules!
I really want the Goddess to be pleased with me.

/character nega scoffs
Ugh.. You're such a goody two-shoes.
It's so much more fun when you bend the rules once in a while.

-(new_one)

So. You're the new one, huh?

+ [yes]
    /perform inspect
    Not too bad. You have potential.
    Though, I'm not too picky.

+ [no]
    /perform laugh
    Not new, huh?
    This one is more confused than most.

+ [timeout]
    /perform confused
    Are you stupid, or something?
    I asked you if you're new here.
    -> new_one
    
+ [distracted] -> PayAttention -> new_one

- /perform sneer
I bet she's been having so much fun
explaining the rules to you 
and telling you how to be a good {player_name},
hasn't she?

+ [yes]
    /perform bored
    Boring.

+ [no]
    /perform pleased
    A little liar. 
    We're going to get along just fine.

+ [timeout]

- /perform scoff
Don't let her fool you. 
She's not as sweet and innocent as she lets on.
Have you figured out what's going on here yet?

- (going_on)

+ [yes]
    /perform curious
    Hmmm. You might just be smarter than you look, {player_name}.
    We'll find out soon enough.
    /perform sassy
    Although, honestly, the dumb ones make better fuck toys.

+ [no]
    /perform rolls_eyes
    Typical. Yuki always wants them to learn the hard way.
    
    /perform amused
    I think I should tell {player_him}.
    /character Yuki frustrated
    Don't you dare!
    The Goddess will be so angry with you!
    /character nega interested
    Oh fine, party pooper!
    I guess I'll just make {player_him} my fuck toy instead.
    
+ [timeout]
    /perform confused
    Are you stupid, or something?
    I asked you if you're new here?
    -> going_on
    

- /perform breast_squeeze
I bet that {player_cock} of yours works just fine.
Let's find out. Shall we?

-(genitals)

+ [yes]
    /perform amused
    Ooo. I'm going to like this one. {player_he} likes to be naughty.

+ [no]
    /perform bored
    Oh great. Another spoil-sport, just like you Yuki.

+ [timeout]
    Should we find out how well your {player_dick} works?
    -> genitals
    
+ [distracted] -> PayAttention -> genitals

- /character Yuki flustered
Behave, Nega! 

/character nega caress_genitals

That's it...
Let me feel your {isBoy:cock swell|pussy dampen}.

Mmmm. Just as I thought.
You want to be a little fuck toy, don't you?

- (caress_genitals)
+ [yes]
    /perform chuckle
    What a naughty {player_name}.
    I feel how {isBoy:hard|wet} you are.
    Do you want to be my fuck toy?
    
    ++ [yes]
        Too bad. I only use fuck toys that have something to give me first.
        And you have nothing I want.
        /perform straighten_up
    
    ++ [no]
        No? You don't like me?
        Awww. But I'm way more fun that that uptight bitch.
        /perform head_toss
    
    ++ [timeout]
        I must be boring you.
    
+ [no] 
    /perform head_toss
    What a prude. You'll change your mind soon enough.
    They always do.

+ [timeout]
    Well, do you want to be used and abused?
    -> caress_genitals

- The Mistresses here are going to have fun 
tearing up that little ass of yours.

/perform approach
//nega whispers
Tick tock little mouse.
You might want to run.
You're trapped in this house.
And we own your cum.
/perform laugh

+ [wait 5]
-
/character Yuki foot_stomp
That's enough, Nega!
No more fun and games for you.
I'll be reporting you to the Headmistress straight away.

/character nega laugh
I'll see you again soon, little mouse.
Come find me when you've earned a reward.
/perform nega_exit

+ [wait 5]
-
/character Yuki angry
I just hate her.

+[wait 3]

- /perform thoughtful
Now... where was I?
Right! The house!

/perform happy
Don't listen to her, by the way.
This is a great house. 
And you're going to learn a lot!
Goddess has invited lots of Mistresses and Dominas to live here.

/perform serious
Would you like me to tell you more about the House?

+[yes]
Good. I'm glad Nega-Yuki didn't distract you too much.
Your poor {player_dick} must be aching after that.

+[no]
/perform frown
Don't let that Nega-Yuki make you naughty.
You have to know how the House works.

+[timeout]

-
/perform serious
If you work real hard and be the best {player_name} you can be,
you might be lucky enough to earn a reward from your favorite Mistress!
    
If you misbehave or struggle too much with instructions,
you might earn a punishment.

/perform sad
The worst part is you can't collect any rewards 
until you've paid off all your punishment marks.

/perform idle
Do you understand that you will earn both
rewards and punishments for your service here?

+ [yes]
    /perform nod 
    Good listening!

+ [no]
    Tsk tsk. It's not good to make a Mistress repeat herself.
    Ahem. When you visit a Mistress and are required to serve,
    you will be evaluated for your performance.
    You will earn a mark for good behavior or bad behavior.
    All bad marks earn you punishments.
    You will have to serve all your punishments before
    you can receive your reward.

- + [wait 5]

- /perform check_clipboard
And I see you already have one of each mark on your record.

One punishment for sneaking into the Goddes' room.
Naughty {player_name}.

Amd one reward for catching the Goddess' interest.
Well done!

+ [wait 5]

- /perform approach
Watch out for that awful Nega-Yuki. She's a bad seed!
All the naughty parts of me I tossed aside.

/perform serious
She'll try to tempt you to give her your rewards for her own use
in exchange for a good time.

/perform annoyed
But it's just a trick!
She won't always reward you and if you get caught,
you'll be punished!

+ [wait 5]

- /perform check_clipboard

Great! That's everything I have to cover in my notes!
Time for for you to go see Headmistress Sonia.
She will teach you how to properly take a punishment.

/perform bounces
Hurry up now!
She doesn't like to be kept waiting.

//need to know how player gets to next room
-> END

= PayAttention

{ cycle:
    - You're not very good at this yet, are you?
    You're supposed to look at me when I'm talking.
    - Bad {player_name}! You should look at me when I speak to you.
    - Oh gee. You need a lot of training. Look at me.
    - Didn't anyone ever teach you to look at people 
    when they're speaking to you?
    - It's very rude not to look at me when I'm speaking to you.
}

+ [paying_attention]
    { cycle:
        - Now... what was I saying? Oh right...
        - Much better. Ahem.
        - Good {player_name}. You might be teachable after all.
        - Now back to your instructions.
    }
    ->->

+ [timeout] -> PayAttention

    



