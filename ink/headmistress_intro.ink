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

- /character headmistress sit_on_desk
Now. Your turn.




-> END

