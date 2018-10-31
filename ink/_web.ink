INCLUDE vars.ink
INCLUDE game_intro.ink
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
        -> goddess_intro.video_jump
}

{ web :
    - -> table_of_contents
	- else : -> game_intro
}


=== table_of_contents ===

+ Test Intro
    -> game_intro_web
+ Test Yuki 2.1
    -> yuki_intro
+ Test Nega 1.0
    -> nega_temptation


== debug_setup ===

// -> demo_intro.genderchoice

/scene bedroom.intro
/lock move-approach
/character goddess

// -> goddess_intro.stand_straight
-> goddess_intro.inspection
-> goddess_intro.debug_jump
