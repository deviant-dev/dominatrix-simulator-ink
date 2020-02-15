# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE debug
INCLUDE vars
INCLUDE code
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
INCLUDE yuki/generic_puppyplay
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


// EXTERNAL isDebug()
// EXTERNAL isWeb()
// EXTERNAL getCode()
// EXTERNAL getCodeUrl()
// EXTERNAL getNegaDie1()
// EXTERNAL getNegaDie2()
// EXTERNAL getNegaDie3()


// Flow Variables

VAR debug = false
VAR web = true


-> set_deviation ->

// Debug Jump
// (must be in-editor and have 'Debug' checked in StoryTeller)
{ isDebug(): -> Debug -> }

-> game_start


=== set_deviation ===
// Redirects the story flow to focus on a specific kink or game mode

// ~ setDeviation(full_game)
~ setDeviation(tutorial)
// ~ setDeviation(demo)
// ~ setDeviation(hand_signals)
// ~ setDeviation(puppyplay)
->->


=== game_start ===

// Make sure deviation is set in case the story state was reset
// via 'RestartStory()' in StoryTeller.
-> set_deviation ->

// -> exit has the logic for module starting locations
{ 
    - deviation == puppyplay:
        -> yuki_hub
    - deviation == hand_signals:
        -> headmistress_hub
    - isWeb():
        -> table_of_contents
    - else:
        -> game_intro
}


=== table_of_contents ===

+ <b>DomSim: Threshold</b>
    ~ setDeviation(tutorial)
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

+ Nega Reward - Tease
    -> nega_reward_tease

+ Yuki Punishment - Puppy Play Spanking
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_punishment_puppyplay_spanking

+ Yuki Task - Puppy Play
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_task_puppyplay
