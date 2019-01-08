# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE vars
INCLUDE access_code
INCLUDE game_intro
INCLUDE entry_hub
INCLUDE goddess/hub
INCLUDE goddess/intro
INCLUDE goddess/lore
INCLUDE goddess/generic_responses
INCLUDE goddess/reward_huge
INCLUDE headmistress/hub
INCLUDE headmistress/intro
INCLUDE headmistress/lore
INCLUDE headmistress/generic_responses
INCLUDE headmistress/apologize
INCLUDE headmistress/punishment_flogging
INCLUDE headmistress/punishment_spanking
INCLUDE headmistress/reward_cunnilingus
INCLUDE headmistress/task_flogging
INCLUDE nega/hub
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_responses
INCLUDE nega/reward_dice
INCLUDE nega/reward_forcedsex
INCLUDE nega/punishment_trampling
INCLUDE yuki/hub
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/punishment_edging
INCLUDE yuki/review
INCLUDE yuki/reward_bathe
INCLUDE yuki/reward_massage
INCLUDE yuki/task_fanning
INCLUDE yuki/generic_responses


VAR debug = false
VAR web = true


// Debug Jump
// (must be in-editor and have 'Debug' checked in StoryTeller)
{ isDebug() :
    // /scene LectureHall
    
    -> nega_intro

    // -> test_marks

    // Headmistress Jumps

    ~ yuki_hub_status = early_access
    ~ headmistress_hub_status = early_access
    ~ punishments = 1
    ~ rewards = 1

    // -> yuki_intro.nega_interruption
    
    // /scene LectureHall.Intro
    // -> headmistress_intro
    // -> headmistress_punishment_spanking

    // /action raise_curtains
    // /scene LectureHall.Punishment_Spanking
    // -> headmistress_punishment_spanking.FinalEnding

    
    // Goddess Jumps
    
    /scene bedroom.intro
    // /character goddess
    // /move
    
    // -> entry_intro
    //-> goddess_intro.debug_jump
    // -> goddess_intro.stand_straight
    // -> goddess_intro.inspection
    // -> goddess_intro.ByeForNow
}

// Debug Jump
// (must be in-editor and have 'Video' checked in StoryTeller)
{ isVideo() :
    -> goddess_intro.video_jump
}

{ isWeb() :
    -> table_of_contents
- else :
    -> game_intro
}

=== test_marks ===
    + [add punishment]
        {punishments < 10:
            ~punishments++
        }
    + [remove punishment]
        {punishments > 0:
            ~punishments--
        }
    + [add reward]
        {rewards < 10:
            ~rewards++
        }
    + [remove reward]
        {rewards > 0:
            ~rewards--
        }
    
- /notify title="Punishments: {punishments} <br/> Rewards: {rewards}"
-> test_marks

=== table_of_contents ===

+ Full Game
    -> game_intro_web

+ Entry Hub
    -> unlock_all -> entry_hub

+ Yuki Intro 2.2
    ~ yuki_hub_status = unlocked
    -> yuki_intro

+ Yuki Punishment Edging 2.0 
    -> unlock_all -> yuki_punishment_edging

+ Yuki Reward Massage 
    -> unlock_all -> yuki_reward_massage

+ Headmistress Intro 
    ~ yuki_hub_status = unlocked
    ~ headmistress_hub_status = unlocked
    -> headmistress_intro

+ Headmistress Punishment Spanking 
    -> unlock_all -> headmistress_punishment_spanking

+ Nega Intro
    -> unlock_all -> nega_intro

+ Nega Hub
    -> unlock_all -> nega_hub.hub

+ Nega Punishment Trampling
    -> unlock_all -> nega_punishment_trampling
    
+ Test Code
    -> enter_code -> END


