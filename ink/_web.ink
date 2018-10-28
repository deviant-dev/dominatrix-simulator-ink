INCLUDE vars.ink
INCLUDE goddess_intro.ink
INCLUDE yuki_intro.ink
INCLUDE yuki_reward_bathe.ink
INCLUDE Yuki_Review
INCLUDE Nega_Temptation
INCLUDE Headmistress_Intro





// EXTERNAL isDebug()

VAR web = true

// Debug Jump
// (must be in-editor and have 'Debug' checked in StoryTeller)
{ isDebug() :
    - ~ player_name = "boy" 
        -> debug_setup
}

// Debug Jump
// (must be in-editor and have 'Video' checked in StoryTeller)
{ isVideo() :
    - ~ player_name = "boy" 
        -> demo_intro.video_jump
}

{ web :
    - -> table_of_contents
	- else : -> demo_intro
}

=== table_of_contents ===

+ Test Intro -> start_intro
+ Test Yuki 2.1 -> demo_tutorial
+ Test Nega 1.0 -> nega_temptation


=== start_intro ===

<blockquote><i>NOTE: This is a quick test for the script that runs the game's introduction.</i></blockquote>

<blockquote><i>Two nude statues kneel before you with outstretched hands, one male and one female. Which would you choose?</i></blockquote>

- (options)


+ {player_name != "boy"}[Touch the male statue] You touch the male statue.
    <blockquote><i>The male statue disappears and you now have hands with thick masculine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The female statue reappears.</i></blockquote>
    }
    ~ player_name = "boy"
    -> options
+ {player_name != "girl"}[Touch the female statue] Female 
    <blockquote><i>The female statue disappears and you now have hands with slender feminine fingers. The missing statue's hands.</i></blockquote>
    {
        - player_name == "none": <blockquote><i>The door at the end of the hall cracks open...</i></blockquote>
        - else: <blockquote><i>The male statue reappears.</i></blockquote>
    }
    ~ player_name = "girl"
    -> options

+ {player_name != "none"}[Open the door.] You open the door.

- <blockquote><i>You have just stepped into a darkened room with a storm thundering outside. Lighting flashes and you see a devilish figure locked in a sexual exchange with two other figures, moaning filling your ears. The lightning flashes again, filling your eyes with a new, this time, tortuous exchange. Again, it flashes, and you find those same figures in a new embrace - each scene wildly different from one another. Without warning, the storm abates, the lightning ceases, and before you stands a Demoness.</i></blockquote>

<blockquote><i>She looks at you for a moment and then challenges you...</i></blockquote>

+ [Introduction] -> demo_intro

