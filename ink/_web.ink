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
INCLUDE goddess/monitoring
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
INCLUDE headmistress/task_hand_signal_training
INCLUDE headmistress/code
INCLUDE nega/hub
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_responses
INCLUDE nega/reward_dice
INCLUDE nega/reward_forcedsex
INCLUDE nega/punishment_trampling
INCLUDE yuki/hub
INCLUDE yuki/code
INCLUDE yuki/generic_responses
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/punishment_edging
INCLUDE yuki/review
INCLUDE yuki/reward_bathe
INCLUDE yuki/reward_massage
INCLUDE yuki/task_fanning
INCLUDE yuki/task_puppyplay
INCLUDE yuki/task_puppyplay_intro
INCLUDE yuki/task_puppyplay_learn
INCLUDE yuki/task_puppyplay_practice



VAR debug = false
VAR web = true


// Debug Jump
// (must be in-editor and have 'Debug' checked in StoryTeller)
{ isDebug() :
    // -> test_audio
    // -> test_marks
    
    
    // --- Goddess Jumps ---
    
    // -> goddess_intro
    // /scene bedroom.intro
    // /character goddess
    // /move
    
    // -> entry_intro
    // -> goddess_intro.debug_jump
    // -> goddess_intro.stand_straight
    // -> goddess_intro.inspection
    // -> goddess_intro.ByeForNow
    //-> goddess_monitoring
    
    
    // --- Yuki Jumps ---
    // -> yuki_intro
    // -> select_gender ->
    // /scene entry.intro3
    
    
    // -> yuki_intro.nega_interruption
    // -> yuki_intro.nega_slap
    // -> yuki_intro.caress_question

    -> yuki_task_puppyplay.start
    // /scene atrium.hub
    // -> yuki_task_puppyplay.pose_sit

    // /character yuki
    // /lookat nega
    
    // /character nega head_toss
    // /lookat yuki
    
    // -> yuki_intro.test_lookat
    // /scene LectureHall
    
    // /scene LectureHall.Punishment_Spanking_Ready



    // --- Headmistress Jumps ---

    // /character headmistress

    // -> headmistress_intro

    // ~ yuki_hub_status = unlocked
    // ~ headmistress_hub_status = unlocked
    // ~ punishments = 1
    // ~ rewards = 1

    
    // /scene LectureHallIntro.Intro3
    // /character headmistress
    // -> headmistress_intro.meet_headmistress
    
    // /scene LectureHall.Punishment_Spanking_Ready
    // /character headmistress
    // /music headmistress
    //  -> headmistress_punishment_spanking.punish_continue

    // /action raise_curtains
    // /scene LectureHall.Punishment_Spanking
    // -> headmistress_punishment_spanking.FinalEnding



    // --- Nega Jumps ---
    
    ~ yuki_hub_status = unlocked
    ~ headmistress_hub_status = unlocked
    ~ nega_hub_status = early_access
    ~ punishments = 0
    ~ rewards = 1
    // -> nega_hub
    // -> nega_reward_dice
    // -> nega_reward_forcedsex
    
}


{ isWeb() :
    -> table_of_contents
- else :
    -> game_intro
}

=== test_marks ===
    + add punishment
        ~ addPunishment()
    + remove punishment
        ~ removePunishment()
    + add reward
        ~ addReward()
    + remove reward
        ~ removeReward()
    
- /notify title="Punishments: {punishments} <br/> Rewards: {rewards}"
-> test_marks

// === test_audio ===

// + [Goddess Music] /music Goddess
// + [Entry Music] /music entry
// + [Headmistress Music] /music headmistress
// + [Music Off] /music off
// + [Orgy Audio] /ambient orgy
// + [Rain Audio] /ambient rain
// + [Crowd Audio] /ambient crowd
// + [Audio Off] /ambient off

// - -> test_audio

=== table_of_contents ===

+ <b>Full Game</b> 
    -> game_intro_web

+ Goddess Intro 
    -> goddess_intro

+ Entryway Intro (Yuki and Nega)
    ~ yuki_hub_status = unlocked
    -> yuki_intro

+ Headmistress Intro
    ~ yuki_hub_status = unlocked
    ~ headmistress_hub_status = unlocked
    -> headmistress_intro

+ Headmistress Punishment - Spanking 
    -> unlock_all -> headmistress_punishment_spanking

+ Nega Intro 
    -> unlock_all -> nega_intro

+ Nega Reward Dice 
    -> unlock_all -> nega_reward_dice

+ Nega Reward - Forced Sex
    -> unlock_all -> nega_reward_forcedsex

+ Yuki Task - Puppy Play
    -> unlock_all -> yuki_task_puppyplay

// + <i>Entry Hub (WIP)</i>
//     -> unlock_all -> entry_hub

// + <i>Goddess Hub (WIP)</i> 
//     -> unlock_all -> goddess_hub

// + <i>Yuki Hub (WIP)</i> 
//     -> unlock_all -> yuki_hub

// + <i>Yuki Reward Massage (WIP)</i> 
//     -> unlock_all -> yuki_reward_massage

// + <i>Yuki Punishment Edging (WIP)</i> 
//     -> unlock_all -> yuki_punishment_edging

// + <i>Headmistress Hub (WIP)</i> 
//     -> unlock_all -> headmistress_hub

// + <i>Nega Hub (WIP)</i> 
//     -> unlock_all -> nega_hub.hub

// + <i>Nega Punishment Trampling (WIP)</i> 
//     -> unlock_all -> nega_punishment_trampling

