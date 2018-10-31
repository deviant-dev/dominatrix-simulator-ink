
=== game_intro ===

/scene LogoRoom.TitleScreen

+ [wait 6]

- (instructions)

/scene LogoRoom.Instructions
/wait

+ [yes]
+ [no]
    /scene LogoRoom.Empty
    -> instructions

- /scene LogoRoom.VerifyAge

+ [yes]
+ [no] -> goddess_intro.DemoEnd

- /scene LogoRoom.Notifications

+ [move]

- (genderchoice) /scene hallway.genderchoice
/lock exit

- (options)

+ [character-choice:male]
    ~ setGender("m")
    <i>You now appear masculine.</i> #999
    /unlock exit
    -> options

+ [character-choice:female]
    ~ setGender("f")
    <i>You now appear feminine.</i> #999
    /unlock exit
    -> options

+ [move]

- -> goddess_intro


=== game_intro_web ===

~ player_name = "none"

<blockquote><i>NOTE: This is a quick test for the script that runs the game's introduction.</i></blockquote>

<blockquote><i>Two nude statues kneel before you with outstretched hands, one male and one female. Which would you choose?</i></blockquote>

- (options)


+ {player_name != "boy"}[Touch the male statue] You touch the male statue.
    <blockquote><i>The male statue disappears and you now have hands with thick masculine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The female statue reappears.</i></blockquote>
    }
    ~ setGender("m")
    -> options
+ {player_name != "girl"}[Touch the female statue] Female 
    <blockquote><i>The female statue disappears and you now have hands with slender feminine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The male statue reappears.</i></blockquote>
    }
    ~ setGender("f")
    -> options

+ {player_name != "none"}[Open the door.] You open the door.

- <blockquote><i>You have just stepped into a darkened room with a storm thundering outside. Lighting flashes and you see a devilish figure locked in a sexual exchange with two other figures, moaning filling your ears. The lightning flashes again, filling your eyes with a new, this time, tortuous exchange. Again, it flashes, and you find those same figures in a new embrace - each scene wildly different from one another. Without warning, the storm abates, the lightning ceases, and before you stands a Demoness.</i></blockquote>

<blockquote><i>She looks at you for a moment and then challenges you...</i></blockquote>

+ [Introduction] -> goddess_intro

