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
And just who are you?
Another new slave?
Why was I not notified?
Yuki-Onna is neglecting her obligations once again.
Always so busy with trying to please the Goddess
and blaming an imaginary creature for her transgressions.
I will speak to her later.


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
As the Headmistress, I oversee the training and correction 
of all slaves in this house.
Understood?

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
As the Headmistress, I oversee the training and correction 
of all slaves in this house.

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


- -> END


