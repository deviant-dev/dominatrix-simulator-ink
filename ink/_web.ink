INCLUDE vars.ink
INCLUDE game_intro.ink
INCLUDE goddess_intro.ink
INCLUDE yuki_intro.ink
INCLUDE yuki_reward_bathe.ink
INCLUDE yuki_review.ink
INCLUDE nega_temptation.ink
INCLUDE headmistress_intro.ink





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
        -> goddess_intro.video_jump
}

{ web :
    - -> table_of_contents
	- else : -> game_intro
}


=== table_of_contents ===

+ Test Intro
    -> game_intro_web
+ Test Yuki 2.2
    -> yuki_intro
+ Test Nega 0.1
    -> nega_temptation


== debug_setup ===

// -> demo_intro.genderchoice

/scene bedroom.intro
/lock move-approach
/character goddess

// -> goddess_intro.stand_straight
-> goddess_intro.inspection
-> goddess_intro.debug_jump
