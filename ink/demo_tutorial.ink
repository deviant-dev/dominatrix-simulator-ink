=== demo_tutorial ===

/scene foyer
/character yuki
/equip feather_duster

{ web:
    <blockquote><i>You are disoriented for a moment as everything turns black and the scene around you changes.</i></blockquote>

    <blockquote><i>You stand inside a large Victorian foyer with a sweeping staircase and several sets of doors leading off of it. The room is fairly well lit, but all of the doors are shrouded in shadows. Before you stands a lithe, young woman dressed in a maid's uniform. Beaming a bright smile, she greets you...</i></blockquote>

    + [Tutorial]
- else:
    -> start_tutorial
}

- (start_tutorial) Oh! There you are!

/perform bounces

I’ve been waiting for you to get here.
My name is Mistress Yuki-Onna.

/perform giggles

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
    
    Well, let's go through the basics at least, 
    to make sure you have the right information. 
    
    /wait
    
+ [no]
    Well, duh!
    You're not supposed to know anything.
    That's the fun part!
    
    /perform claps_hands
    
+ [timeout]
    Hello-o
    Anybody home?
    /perform cocks_head_to_left
    -> new_guest
    
+ [distracted] -> PayAttention -> new_guest

- (house_rules)
You are a guest of Threshold House.
Well, we call it a house, but it's not really one...

/perform muses 
/perform serious

All guests must follow the rules
or they will not be allowed to stay.

-(learn_rules)
Would you like to know what the rules are?

+ [yes]
Oh goody! I love telling people the house rules!

+ [no]
Don't be a pouty baby.
You have to learn the rules or you can't be a good {player_name}!

+ [timeout]
Did you forget the question?
    -> learn_rules
    
+ [distracted] -> PayAttention -> learn_rules
    
/wait

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

-(easy_rules)
Easy, right?

+ [yes]
I know! Our Goddess is so kind!

+ [no]
Oh! Don't worry. You'll learn fast!

+ [timeout]
Are you still listening?
    -> easy_rules
    
+ [distracted] -> PayAttention -> easy_rules
    
/wait
Let's practice answering questions!
/perform waves_feather_duster
    
- (answering_name)
    Is your name {player_name}?
    
    + [yes]
        You've got it! You answered my question.
        /perform bounces
    
    + [no]
        Yes, it is, silly! But good job <i>trying</i> to answer my question!
        /perform wags_feather_duster
    
    + [timeout]
        Come on. You can do it.
        /perform smile
        -> answering_name
    
    + [distracted] -> PayAttention -> answering_name
    
- (answering_good)
    Are you a good {player_name}?
    
    + [yes]
       You did it! You answered my question.
       That makes you a good {player_name}
        /perform twirls
    
    + [no]
        No? Well, that's okay.
        We have Mistresses who can help you be a good {player_name}.
        /perform wags_feather_duster
    
    + [timeout]
        Practice makes perfect!
        /perform smile
        -> answering_good
    
    + [distracted] -> PayAttention -> answering_good

- Now. Let's try obeying.

/wait

- (obeying)
    Kneel on the floor, {player_name}.
    /perform point_at_floor
    
    + [pose:kneel]
        You did it! I'm so proud of you!
        /perform bounces
    + [timeout]
        Come on. You can do it.
        /perform smile
        Kneel, {player_name}!
        /perform point_at_floor
        -> obeying

 - (house_description)  
    Oh yes. I guess I better explain how it all works. 
    Goddess has invited lots of Mistresses and Dominas to live here.
    This house is just filled with so many hot and sexy boss ladies!
    If you work real hard and be the best {player_name} you can be,
    you might be lucky enough to serve each one!
    /wait
    Before you meet them,
    I have to make sure you know your own limits and desires, though,
    so you are properly prepared for what they offer.

- (know_preferences)
    Do you know what your limits and desires are?
        
    +[yes]
        Oh good! Then it should be easy to answer my questions.
        
    +[no]
        That's okay! I ask good questions, so we can learn together!
        
    +[timeout]
        You're not going to start breaking the rules are you?
        You have to answer questions when you're asked.
        -> know_preferences

- (preferences)

    Make sure you answer honestly. If you don't, you might encounter unpleasant surprises in the house.
    
    /perform pouts
    
    Anything you tell me NO is off the table.
    Goddess doesn't want her guests damaged... too much.
    Whatever you say YES to may become an opportunity for you
    with our Mistresses and Dominas.

- (ready)

    Are you ready?
    
    +[yes]
        Okay! I bet you have a dirty mind. At least I hope so!
        Those are the yummiest. Let's find out!
        /change yuki yuki_with_clipboard
        /perform ready_clipboard
    
    +[no]
        Oh too bad. We can't keep playing if you aren't ready.
        -> ready
            
    +[timeout]
        Let's try this again.
        I'm going to ask you to admit your sexual desires to me.
        These are things you might get to explore in the house, if your Mistress or Domina offers it.
        -> ready
    
    +[distracted!] -> PayAttention ->
        -> ready

- (ask_bondage)

    Do you like the idea of being tied up and used?

    +[yes]
        Mmmm. One of my favorite things to do.
        ~set_kink(bondage, yes)
        ~set_kink(sextoy,  yes)

    +[no]
        How disappointing. Oh well.
        ~set_kink(bondage, no)
        ~set_kink(sextoy,  no)

    +[timeout]
        I'm waiting. -> ask_bondage

- (ask_discipline) Are you a naughty little {player_name} who needs to be punished now and then?

    +[yes]
        I do so love a good spanking. {set_kink(discipline, yes)}
    
    +[no]
        Hrmmm. There are lots of other things to play instead. {set_kink(discipline, no)}
    
    +[timeout]
        Making me wait won't earn you a spanking.
        -> ask_discipline

- Oh, I know! You're a worthless slut who isn't worthy of attention. Is that it?
- (ask_humiliation)

    +[yes]
        Of course you're a dirty little slut. Yum!
        Don't worry. You can grovel for a Mistress or Domina soon.
        ~set_kink(humiliation, yes)

    +[no]
        Sigh. Oh well. There are other ways to play with you. {set_kink(humiliation, no)}
  
    +[timeout]
        I'm waiting.
        Are you a worthless slut unworthy of attention?
        -> ask_humiliation

- (ask_worship) Do you dream of worshipping your Goddess' form?

    +[yes]
        Ooo, you will get lots of chances to worship. {set_kink(worship, yes)}
    
    +[no]
        A shame. Worshipping is nice. {set_kink(worship, no)}
   
    +[timeout]
        You're not paying attention. -> ask_worship

- (ask_training) Do you strive for perfection in service?

    +[yes] It will be so much fun to mold you and shape you into a perfect slave. {set_kink(training, yes)} 
    
    +[no] That's fine. I have plenty of other things to work with. {set_kink(training, no)} 
    
    +[timeout] I don't like waiting. -> ask_training
    
    - -> set_safeword


= set_safeword
    
    You've been such a good {player_name} so far!
    
    /perform twirls
    
    I have lots of delicious ideas to work with and share with all the other Mistresses and Dominas.

    Just a little longer...
    We have one more thing to discuss before I can truly make you mine.
    Do you know what a safeword is?

    +[yes]
        Good. You will need to have a safeword for us to play together.
        It's important we stop when you've had enough
        and I will never be upset with you for using it.

    +[no]
        When we play, sometimes it can be very rough, sometimes to your limits.
        When you've reached your limits, I want you to use a 'safeword'
        that will tell me it is time to stop and take care of you.
        Having and using a 'safeword' is how we keep you safe.

- (ask_safeword) We can use 'red', 'stop', 'pineapple', or 'safe word'. Which do you prefer?
    + [button:'Red']
        ~player_safeword="Red"
    + [button:'Stop']
        ~player_safeword="Stop"
    + [button:'Pineapple']
        ~player_safeword="Pineapple"
    + [button:'Safe Word']
        ~player_safeword="Safe Word"
    + [timeout]
        Speak up and let's stick to the script, shall we? 
        -> ask_safeword

    - (listen) {So|Do} you want your safe word to be "{player_safeword}"?
    + [yes]
    + [no] -> ask_safeword
    + [timeout] Let's try that again. -> listen

- Great! Says here in my notes, you are ready to serve!

/change yuki_with_clipboard yuki

And you know what?
After all this hard work, I think <i>I</i> deserve a little reward.
Don't you?
Before you run off and go get yourself in trouble again,
you have to practice with me!
-> playtime_yuki

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

    



