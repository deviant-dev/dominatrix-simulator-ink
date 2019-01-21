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
    // -> test_audio
    // Goddess Jumps
    
    // -> goddess_intro
    // /scene bedroom.intro
    // /character goddess
    // /move
    
    // -> entry_intro
    // -> goddess_intro.debug_jump
    // -> goddess_intro.stand_straight
    // -> goddess_intro.inspection
    // -> goddess_intro.ByeForNow
    // /scene LectureHall
    
    // /scene LectureHall.Punishment_Spanking_Ready
    // /character headmistress

    // -> headmistress_punishment_spanking.accept_punishment

    // -> test_marks

    // Headmistress Jumps

    ~ yuki_hub_status = early_access
    ~ headmistress_hub_status = early_access
    ~ punishments = 1
    ~ rewards = 1

    // -> yuki_intro

    /scene entry.intro3
    
    
    // -> yuki_intro.nega_interruption
    // -> yuki_intro.nega_slap
   // -> yuki_intro.pet_beg

    // /character yuki
    // /lookat nega
    
    // /character nega head_toss
    // /lookat yuki
    
    // -> yuki_intro.test_lookat
    
    // /scene LectureHall.Intro
    // -> headmistress_intro
    
    // -> headmistress_punishment_spanking

    // /action raise_curtains
    // /scene LectureHall.Punishment_Spanking
    // -> headmistress_punishment_spanking.FinalEnding

    -> nega_intro
    
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

+ Headmistress Punishment Spanking 
    -> unlock_all -> headmistress_punishment_spanking

+ Nega Intro 
    -> unlock_all -> nega_intro

+ Nega Reward Dice 
    -> unlock_all -> nega_reward_dice

+ Nega Forced Sex Reward 
    -> unlock_all -> nega_reward_forcedsex

// + <i>Entry Hub (WIP)</i>
//     -> unlock_all -> entry_hub

// + <i>Goddess Hub (WIP)</i> 
//     -> unlock_all -> goddess_hub

// + <i>Yuki Hub (WIP)</i> 
//     -> unlock_all -> yuki_hub

 + <i>Yuki Reward Massage (WIP)</i> 
     -> unlock_all -> yuki_reward_massage

// + <i>Yuki Punishment Edging (WIP)</i> 
//     -> unlock_all -> yuki_punishment_edging

// + <i>Headmistress Hub (WIP)</i> 
//     -> unlock_all -> headmistress_hub

// + <i>Nega Hub (WIP)</i> 
//     -> unlock_all -> nega_hub.hub

// + <i>Nega Punishment Trampling (WIP)</i> 
//     -> unlock_all -> nega_punishment_trampling

