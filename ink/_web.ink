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
INCLUDE headmistress/task_handsignals
INCLUDE headmistress/task_handsignals_basics
// INCLUDE headmistress/punishment_flogging
INCLUDE headmistress/punishment_spanking
INCLUDE headmistress/train_spanking
// INCLUDE headmistress/reward_cunnilingus
INCLUDE headmistress/reward_exhibitionism
// INCLUDE headmistress/reward_spanking
// INCLUDE headmistress/task_flogging
// INCLUDE headmistress/task_handsignals_endurance
// INCLUDE headmistress/task_handsignals_furniture
INCLUDE nega/hub
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_responses
INCLUDE nega/reward_dice
INCLUDE nega/reward_tease
INCLUDE nega/reward_light
INCLUDE nega/reward_forcedsex
INCLUDE nega/punishment_tease
INCLUDE nega/punishment_boot_lick
INCLUDE nega/punishment_camera_shoot
INCLUDE nega/punishment_genital_torture
// INCLUDE nega/punishment_trampling

INCLUDE yuki/hub
INCLUDE yuki/code
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/generic_responses
INCLUDE yuki/generic_puppyplay
// INCLUDE yuki/punishment_edging
INCLUDE yuki/task_puppyplay
INCLUDE yuki/task_puppyplay_intro
INCLUDE yuki/task_puppyplay_learn
INCLUDE yuki/task_puppyplay_practice
INCLUDE yuki/punishment_puppyplay_spanking
// INCLUDE yuki/punishment_puppyplay_cage
// INCLUDE yuki/review
// INCLUDE yuki/reward_bathe
// INCLUDE yuki/reward_massage
INCLUDE yuki/reward_puppyplay_milking
// INCLUDE yuki/reward_puppyplay_lickfeet
// INCLUDE yuki/task_fanning

// INCLUDE yuki/task_teaservice
INCLUDE yuki/train_spanking
INCLUDE devil_girl/promo
INCLUDE devil_girl/care








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
// ~ setDeviation(exhibitionism)
->->


=== game_start ===

{ isWeb(): -> table_of_contents }

// Make sure deviation is set in case the story state was reset
// via 'RestartStory()' in StoryTeller.
-> set_deviation ->

// -> exit has the logic for module starting locations
{
    - deviation == puppyplay:
        -> yuki_hub
    - deviation == hand_signals:
        -> headmistress_hub
    - else:
        -> game_intro
}

=== post_intro_deviation_check ===
{ 
    - deviation == puppyplay:
        -> yuki_hub
    - deviation == hand_signals:
        -> headmistress_hub
    - deviation == exhibitionism:
        -> headmistress_hub
    - else:
        -> goddess_intro
}


=== table_of_contents ===

+ <b>DomSim: Threshold</b>
    ~ setDeviation(tutorial)
    -> game_intro_web

+ <b>DomSim: Threshold Replay</b>
    ~ setDeviation(tutorial)
    -> unlock_shortcuts -> game_intro_again.force

+ <b>DomSim: Threshold Demo</b>
    ~ setDeviation(demo)
    -> game_intro_web

+ Headmistress Punishment - Spanking
    -> unlock_all -> headmistress_punishment_spanking

+ Headmistress Task - Hand Signals
    ~ setDeviation(hand_signals)
    -> unlock_all -> headmistress_task_handsignals

+ Headmistress Reward - Exhibitionism
    ~ setDeviation(exhibitionism)
    ~ rewards = 1
    -> unlock_all -> headmistress_reward_exhibitionism

+ Nega Reward - Forced Sex
    -> unlock_all -> nega_reward_forcedsex

+ Nega Reward - Tease
    -> unlock_all -> nega_reward_tease

+ Yuki Punishment - Puppy Play Spanking
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_punishment_puppyplay_spanking

+ Yuki Task - Puppy Play
    ~ setDeviation(puppyplay)
    -> unlock_all -> yuki_task_puppyplay
 