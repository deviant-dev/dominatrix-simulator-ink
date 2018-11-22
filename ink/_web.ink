# title: Dominatrix Simulator Scripts
# theme: dark


INCLUDE vars
INCLUDE game_intro
INCLUDE entry_hub
INCLUDE goddess_hub
INCLUDE goddess_intro
INCLUDE goddess_reward_huge
INCLUDE headmistress_hub
INCLUDE headmistress_intro
INCLUDE headmistress_punishment_flogging
INCLUDE headmistress_reward_cunnilingus
INCLUDE headmistress_task_flogging
INCLUDE nega_hub
INCLUDE nega_temptation
INCLUDE yuki_intro
INCLUDE yuki_hub
INCLUDE yuki_punishment_edging
INCLUDE yuki_reward_bathe
INCLUDE yuki_review
INCLUDE yuki_task_fanning
INCLUDE headmistress_punishment_spanking
INCLUDE yuki_reward_massage


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
+ Test Main Entry hub
    -> entry_hub
+ Test Yuki 2.2
    -> yuki_intro
+ Test Nega 0.1
    -> nega_temptation
+ Test Headmistress Intro
    -> headmistress_intro
+ Test Yuki Punishment 2.0
    -> yuki_punishment_edging
+ Test Yuki Massage
    -> yuki_reward_massage


== debug_setup ===

// -> demo_intro.genderchoice

/scene bedroom.intro
/lock move-approach
/character goddess

// -> goddess_intro.stand_straight
-> goddess_intro.inspection
-> goddess_intro.debug_jump
