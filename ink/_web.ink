
# title: Dominatrix Simulator Scripts
# author: deviant.tech
# theme: dark


INCLUDE vars.ink
INCLUDE game_intro.ink
INCLUDE main_hub.ink
INCLUDE goddess_hub.ink
INCLUDE goddess_intro.ink
INCLUDE goddess_reward_huge.ink
INCLUDE headmistress_hub.ink
INCLUDE headmistress_intro.ink
INCLUDE headmistress_punishment_flogging.ink
INCLUDE headmistress_reward_cunnilingus.ink
INCLUDE headmistress_task_flogging.ink
INCLUDE nega_hub.ink
INCLUDE nega_temptation.ink
INCLUDE yuki_intro.ink
INCLUDE yuki_hub.ink
INCLUDE yuki_punishment_edging.ink
INCLUDE yuki_reward_bathe.ink
INCLUDE yuki_review.ink
INCLUDE yuki_task_fanning.ink
INCLUDE headmistress_punishment_spanking
INCLUDE yuki_reward_massage.ink


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
    -> main_hub
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
