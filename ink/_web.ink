# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE debug
INCLUDE credits
INCLUDE code
INCLUDE entry_hub
INCLUDE game_intro
INCLUDE vars
INCLUDE web

INCLUDE deviation/unspeakable_toy
INCLUDE general/bad_touch

INCLUDE angel/hub
INCLUDE angel/intro
INCLUDE angel/task_placeholder
INCLUDE angel/punishment_placeholder
INCLUDE angel/reward_placeholder
INCLUDE angel/rewardmega_placeholder

INCLUDE caliste/hub
INCLUDE caliste/intro
INCLUDE caliste/task_placeholder
INCLUDE caliste/punishment_placeholder
INCLUDE caliste/reward_placeholder
INCLUDE caliste/rewardmega_placeholder

INCLUDE furia/hub
INCLUDE furia/intro
INCLUDE furia/generic_responses
INCLUDE furia/task_gloryhole_training
INCLUDE furia/task_placeholder
INCLUDE furia/punishment_placeholder
INCLUDE furia/reward_placeholder
INCLUDE furia/rewardmega_placeholder

INCLUDE goddess/hub
INCLUDE goddess/intro
INCLUDE goddess/lore
INCLUDE goddess/generic_responses
INCLUDE goddess/monitoring
INCLUDE goddess/monitoring_intro
INCLUDE goddess/task_placeholder
INCLUDE goddess/punishment_placeholder
INCLUDE goddess/reward_joi
INCLUDE goddess/reward_placeholder
INCLUDE goddess/reward_serviced
INCLUDE goddess/rewardmega_giantess

INCLUDE headmistress/hub
INCLUDE headmistress/code
INCLUDE headmistress/intro
INCLUDE headmistress/lore
INCLUDE headmistress/generic_responses
INCLUDE headmistress/crowd_responses
INCLUDE headmistress/apologize
INCLUDE headmistress/task_handsignals
INCLUDE headmistress/task_handsignals_basics
INCLUDE headmistress/task_handsignals_endurance
INCLUDE headmistress/task_handsignals_furniture
INCLUDE headmistress/punishment_spanking
INCLUDE headmistress/train_spanking
INCLUDE headmistress/reward_cunnilingus
INCLUDE headmistress/reward_exhibitionism
INCLUDE headmistress/reward_spanking
INCLUDE headmistress/rewardmega_placeholder

INCLUDE nega/hub
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_responses
INCLUDE nega/reward_dice
INCLUDE nega/reward_tease
INCLUDE nega/reward_light_edging
INCLUDE nega/reward_hard_cunnilingus
INCLUDE nega/reward_hard_forcedsex
INCLUDE nega/punishment_tease
INCLUDE nega/punishment_light_bootlick
INCLUDE nega/punishment_light_camerashoot
INCLUDE nega/punishment_hard_genitaltorture
INCLUDE nega/punishment_hard_trampling

INCLUDE pragma/hub
INCLUDE pragma/intro
INCLUDE pragma/task_placeholder
INCLUDE pragma/punishment_placeholder
INCLUDE pragma/reward_placeholder
INCLUDE pragma/rewardmega_placeholder

INCLUDE treat/hub
INCLUDE treat/intro
INCLUDE treat/generic_responses
INCLUDE treat/monitoring
INCLUDE treat/session_subdrop
INCLUDE treat/task_placeholder
INCLUDE treat/punishment_placeholder
INCLUDE treat/reward_placeholder
INCLUDE treat/rewardmega_placeholder

INCLUDE treat/promo
INCLUDE treat/care

INCLUDE yuki/hub
INCLUDE yuki/code
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/generic_responses
INCLUDE yuki/generic_puppyplay
INCLUDE yuki/task_fanning
INCLUDE yuki/task_puppyplay
INCLUDE yuki/task_puppyplay_intro
INCLUDE yuki/task_puppyplay_learn
INCLUDE yuki/task_puppyplay_practice
INCLUDE yuki/task_teaservice
INCLUDE yuki/punishment_edging
INCLUDE yuki/punishment_puppyplay_cage
INCLUDE yuki/punishment_puppyplay_spanking
INCLUDE yuki/reward_cunnilingus
INCLUDE yuki/reward_massage
INCLUDE yuki/reward_puppyplay_lickfeet
INCLUDE yuki/reward_puppyplay_milking
INCLUDE yuki/rewardmega_placeholder




// EXTERNAL getNegaDie1()
// EXTERNAL getNegaDie2()
// EXTERNAL getNegaDie3()


// Flow Variables
LIST deviation = (full_game), tutorial, demo, puppyplay, hand_signals, exhibitionism, treat, nega_dice, pragma, furia, unspeakable_toy

VAR debug = false
VAR web = true
VAR inVR = false

// Debug Jump
// (must be in-editor and have 'Debug' checked on Settings object)
{ debug:
    /log Entering ink debug.
    -> Debug ->
    /log Exiting ink debug.
}

~ setDeviation(deviation)
-> game_start
