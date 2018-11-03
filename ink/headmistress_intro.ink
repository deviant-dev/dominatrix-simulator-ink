=== headmistress_intro ===
{ web: -> select_gender -> }

/scene office.spank_slave
/character headmistress
/equip wood_paddle
/character slave crying

{ web:
    <blockquote><i>You are disoriented for a moment as everything turns black and the scene around you changes.</i></blockquote>

    <blockquote><i>You stand inside a spacious Victorian office with a large wooden desk and walls of bookshelves lining the room. Before you stands a lean and lengthy woman with an ample bosom. Her face is stern and her eyes cold as she looks you up and down...</i></blockquote>

    + [Start]
}

~ obey = 0 
-
/character headmistress
/perform spank slave 

- Stand right there until I'm ready for you, {player_name}
+[wait 3]

- /perform spank slave
You <I>will</I> learn to behave, slave.
+[wait 3]

- /perform spank slave
Or  you will not sit for a week.
/character slave pleading
I'm sorry, Headmistress.
I'll be good. I promise!
+[wait 3]

- /character headmistress
/perform spank slave
We're finished here.
+[wait 3]

- /perform smooth_skirt
Out of my office. Now.
/character slave stands
Yes, Headmistress. 
Thank you, Headmistress.
/perform runs_away
+[wait 3]


-/character headmistress sit_on_desk
Now. Your turn.
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
Entering the Goddess's room without permission
is forbidden.
/perform tap_paddle
+[wait 2]

-You will be punished.
And you will do it with grace.
I will teach you how.
Just like I do with all the new slaves.
/perform stand_up
+[wait 2]

-Come here and bend over this desk.
First, you will learn how to present yourself
for punishment.
/perform idle
//player needs to move to the desk and bend forward

- (bend_over)
+ [pose:bend_over] -> HoldPose(-> bend_over_fail, -> bend_over_desk) ->
+ { bend_over_desk_tries < 2 } [timeout] -> bend_over_desk
//+ { bend_over_desk_tries >= 2 } [timeout]
+ { bend_over_desk_tries >= 2 } [timeout] -> CheckIfInterested -> bend_over_desk
// + [no] -> CheckIfInterested -> bend_over_desk

-> END

