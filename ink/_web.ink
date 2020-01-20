# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE vars
INCLUDE access_code
INCLUDE game_intro
INCLUDE entry_hub
INCLUDE general/bad_touch
INCLUDE goddess/hub
INCLUDE goddess/intro
INCLUDE goddess/lore
INCLUDE goddess/generic_responses
INCLUDE goddess/monitoring
INCLUDE goddess/monitoring_intro
INCLUDE goddess/reward_huge
INCLUDE headmistress/hub
INCLUDE headmistress/code
INCLUDE headmistress/intro
INCLUDE headmistress/lore
INCLUDE headmistress/generic_responses
INCLUDE headmistress/apologize
INCLUDE headmistress/punishment_flogging
INCLUDE headmistress/punishment_spanking
INCLUDE headmistress/reward_cunnilingus
INCLUDE headmistress/reward_spanking
INCLUDE headmistress/task_flogging
INCLUDE headmistress/task_handsignals
INCLUDE headmistress/task_handsignals_basics
INCLUDE headmistress/task_handsignals_endurance
INCLUDE headmistress/task_handsignals_furniture
INCLUDE headmistress/train_spanking
INCLUDE nega/hub
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_responses
INCLUDE nega/greeting_tease
INCLUDE nega/punishment_tease
INCLUDE nega/punishment_trampling
INCLUDE nega/reward_dice
INCLUDE nega/reward_forcedsex
INCLUDE nega/reward_tease
INCLUDE yuki/hub
INCLUDE yuki/code
INCLUDE yuki/generic_responses
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/punishment_edging
INCLUDE yuki/punishment_puppyplay_spanking
INCLUDE yuki/punishment_puppyplay_cage
INCLUDE yuki/review
INCLUDE yuki/reward_bathe
INCLUDE yuki/reward_massage
INCLUDE yuki/reward_puppyplay_milking
INCLUDE yuki/reward_puppyplay_lickfeet
INCLUDE yuki/task_fanning
INCLUDE yuki/task_puppyplay
INCLUDE yuki/task_puppyplay_intro
INCLUDE yuki/task_puppyplay_learn
INCLUDE yuki/task_puppyplay_practice
INCLUDE yuki/task_teaservice
INCLUDE yuki/train_spanking






VAR debug = false
VAR web = true

// Redirects the story flow to focus on a specific kink or game mode

// ~ setDeviation(full_game)
~ setDeviation(demo)



// EXTERNAL isDebug()
// EXTERNAL isWeb()
// EXTERNAL getCode()
// EXTERNAL getCodeUrl()


// Debug Jump
// (must be in-editor and have 'Debug' checked in StoryTeller)
{ isDebug():
    // Auto-set gender here to skip gender selection step
    // ~setGender("m")
    ~setGender("f")
    
    // -> RandomCommentLoop(-> Goddess_GoodJob, 1, 2, 3, 3) ->

    // Force a different deviation

    // ~ setDeviation(full_game)
    // ~ setDeviation(demo)
    // ~ setDeviation(puppyplay)
    // ~ setDeviation(hand_signals)


    ///scene Entry.Empty
    // -> test_audio
    // -> test_marks
    
    // -> game_intro.choices
    // -> demo_end
    
    // -> test_multiple_poses
    
    // --- Goddess Jumps ---
    // -> goddess_hub
    // /scene bedroom.intro
    // /character goddess
    // /move
    
    // -> entry_intro
    // -> goddess_intro.debug_jump
    // -> goddess_intro.stand_straight
    // -> goddess_intro.inspection
    // -> goddess_intro.ByeForNow
    // -> goddess_intro.flash_1
    // -> goddess_monitoring
    
    
    // --- Yuki Jumps ---
    // -> yuki_hub
    // -> yuki_intro
    // -> select_gender ->
    // /scene entry.intro3
    // -> test_look
    
    
    // -> yuki_intro.nega_interruption
    // -> yuki_intro.nega_slap
    // -> yuki_intro.caress_question
   
   //  -> yuki_punishment_edging
   // 
        
    // /scene atrium.close
    //-> yuki_task_puppyplay
    // -> yuki_task_puppyplay_intro.puppy_yes_intro -> exit
    -> yuki_reward_puppyplay_milking
    // -> yuki_punishment_puppyplay_spanking
   // -> yuki_punishment_puppyplay_cage
        

   



    // --- Headmistress Jumps ---

    // -> headmistress_intro
    //  /scene LectureHall
    
    // /scene LectureHall.Punishment_Spanking_Ready

    // /character headmistress
    // /scene LectureHall.Punishment_Spanking_Ready
    //  -> headmistress_punishment_spanking.accept_punishment

    // ~ yuki_hub_status = unlocked
    // ~ headmistress_hub_status = unlocked
    // ~ punishments = 1
    // ~ rewards = 1

    // -> headmistress_intro.jump_start
    
    // /scene LectureHall.Punishment_Spanking_Ready
    //  /character headmistress
    //  /music headmistress
    // -> headmistress_punishment_spanking.punish_continue

    // ~ deviation = hand_signals
    //  -> headmistress_hub

    // /action raise_curtains
    // /scene LectureHall.Punishment_Spanking
    //  -> headmistress_punishment_spanking.SpankingFinished



    // --- Nega Jumps ---
    
    // -> nega_hub
    
    /scene attic.reward_forcedsex1
    /music nega
    /ambient howling-wind
    ~ setScene(task_scene, Nega)
    -> nega_reward_forcedsex.like_that


   // -> nega_reward_dice.test_dice
    // -> nega_reward_forcedsex
    
    // -> nega_reward_tease
    
}

// -> exit has the logic for module starting locations

{ 
    - deviation == puppyplay:
        -> yuki_hub
    - deviation == hand_signals:
        -> headmistress_hub
}

{ isWeb() :
    -> table_of_contents
- else :
    // Main Game 
    -> game_intro
}

=== test_look ===
    /scene entry.intro3

    /character yuki thoughtful
    /lookat nega

    /character nega head_toss
    /lookat yuki
    
    + [yes] -> yuki_intro.test_lookat

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


=== test_multiple_poses ===
/scene Entry.PoseTest

- (move_0)

/wait 1
+ [continue]
-

+ [move:90] -> move_90
// + [move:180] -> move_180
// + [move:-90] -> move_270
+ [pose:puppy_yes]
    /notify title="You answered 'YES'."
+ [pose:puppy_no]
    /notify title="You answered 'NO'."
- -> move_0

- (move_90)

/wait 1
+ [continue]
-

// + [move:0] -> move_0
+ [move:180] -> move_180
// + [move:-90] -> move_270
+ [pose:puppy_yes]
    /notify title="You answered 'YES'."
+ [pose:puppy_no]
    /notify title="You answered 'NO'."
- -> move_90

- (move_180)

/wait 1
+ [continue]
-

// + [move:90] -> move_90
// + [move:0] -> move_0
+ [move:-90] -> move_270
+ [pose:puppy_yes]
    /notify title="You answered 'YES'."
+ [pose:puppy_no]
    /notify title="You answered 'NO'."
- -> move_180

- (move_270)

/wait 1
+ [continue]
-

// + [move:90] -> move_90
// + [move:180] -> move_180
+ [move:0] -> move_0
+ [pose:puppy_yes]
    /notify title="You answered 'YES'."
+ [pose:puppy_no]
    /notify title="You answered 'NO'."
- -> move_270


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
    ~ setDeviation(demo)
    -> game_intro_web

// + Full Game (WIP)
//     ~ setDeviation(full_game)
//     -> game_intro_web

+ Goddess Intro 
    -> goddess_intro

+ Entryway Intro (Yuki and Nega)
    -> yuki_intro

+ Headmistress Intro
    -> headmistress_intro

+ Headmistress Punishment - Spanking 
    -> unlock_all -> headmistress_punishment_spanking

+ Headmistress Task - Hand Signals
    ~ setDeviation(hand_signals)
    -> unlock_all -> headmistress_task_handsignals

+ Nega Intro 
    -> unlock_all -> nega_intro

+ Nega Reward - Forced Sex
    -> unlock_all -> nega_reward_forcedsex

+ Yuki Punishment - Puppy Play Spanking
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_punishment_puppyplay_spanking

+ Yuki Task - Puppy Play
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_task_puppyplay
