# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE debug
INCLUDE code
INCLUDE vars
INCLUDE web
INCLUDE game_intro
INCLUDE game_outro
INCLUDE entry_hub

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

INCLUDE ereshkigal/hub
INCLUDE ereshkigal/hub_vignette
INCLUDE ereshkigal/intro
INCLUDE ereshkigal/punishment_placeholder
INCLUDE ereshkigal/reward_placeholder
INCLUDE ereshkigal/task_placeholder

INCLUDE furia/hub
INCLUDE furia/intro
INCLUDE furia/generic_responses
INCLUDE furia/generic_minigame
INCLUDE furia/task_bootlicking
INCLUDE furia/task_gloryhole_training
INCLUDE furia/hub_vignette
INCLUDE furia/punishment_analingus
INCLUDE furia/punishment_edging
INCLUDE furia/punishment_placeholder
INCLUDE furia/reward_blowjob
INCLUDE furia/reward_pegging
INCLUDE furia/reward_placeholder
INCLUDE furia/rewardmega_placeholder

INCLUDE goddess/hub
INCLUDE goddess/hub_vignette
INCLUDE goddess/intro
INCLUDE goddess/lore
INCLUDE goddess/generic_joi
INCLUDE goddess/generic_responses
INCLUDE goddess/monitoring
INCLUDE goddess/monitoring_intro
INCLUDE goddess/task_placeholder
INCLUDE goddess/punishment_placeholder
INCLUDE goddess/reward_giantess_joi
INCLUDE goddess/reward_joi
INCLUDE goddess/rewardmega_giant_vulva
INCLUDE goddess/reward_serviced
INCLUDE goddess/rewardmega_giantess

INCLUDE headmistress/hub
INCLUDE headmistress/hub_vignette
INCLUDE headmistress/code
INCLUDE headmistress/intro
INCLUDE headmistress/lore
INCLUDE headmistress/generic_minigame_tempo
INCLUDE headmistress/generic_minigame_tempo_cunnilingus
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
INCLUDE nega/hub_vignette
INCLUDE nega/intro
INCLUDE nega/lore
INCLUDE nega/generic_minigame
INCLUDE nega/generic_responses
INCLUDE nega/reward_dice
INCLUDE nega/reward_tease
INCLUDE nega/reward_light_edging
INCLUDE nega/reward_hard_cunnilingus
INCLUDE nega/reward_hard_forcedsex
INCLUDE nega/reward_hard_cunnilingus_dog
INCLUDE nega/punishment_tease
INCLUDE nega/punishment_light_bootlick
INCLUDE nega/punishment_light_camerashoot
INCLUDE nega/punishment_hard_genitaltorture
INCLUDE nega/punishment_hard_trampling

INCLUDE pragma/hub
INCLUDE pragma/hub_vignette
INCLUDE pragma/intro
INCLUDE pragma/task_dancing_doll
INCLUDE pragma/task_placeholder
INCLUDE pragma/punishment_placeholder
INCLUDE pragma/reward_fucking_machine
INCLUDE pragma/rewardmega_placeholder
INCLUDE pragma/generic_responses
INCLUDE pragma/task_posing_doll
INCLUDE pragma/motion_minigame_dancing_doll
INCLUDE pragma/motion_minigame

INCLUDE treat/hub
INCLUDE treat/hub_vignette
INCLUDE treat/care
INCLUDE treat/promo
INCLUDE treat/intro
INCLUDE treat/generic_responses
INCLUDE treat/generic_minigame
INCLUDE treat/monitoring
INCLUDE treat/session_subdrop
INCLUDE treat/session_aftercare
INCLUDE treat/task_placeholder
INCLUDE treat/punishment_placeholder
INCLUDE treat/reward_placeholder
INCLUDE treat/task_foot_worship
INCLUDE treat/punishment_spanking
INCLUDE treat/task_anal_training
INCLUDE treat/reward_anal_masturbation
INCLUDE treat/reward_cunnilingus
INCLUDE treat/reward_riding
INCLUDE treat/rewardmega_placeholder

INCLUDE yuki/hub
INCLUDE yuki/hub_vignette
INCLUDE yuki/code
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/generic_responses
INCLUDE yuki/generic_puppyplay
INCLUDE yuki/generic_minigame
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
//INCLUDE yuki/reward_massage
INCLUDE yuki/reward_puppyplay_lickfeet
INCLUDE yuki/reward_puppyplay_milking
INCLUDE yuki/rewardmega_placeholder







// EXTERNAL getNegaDie1()
// EXTERNAL getNegaDie2()
// EXTERNAL getNegaDie3()


// Flow Variables
LIST deviation = (full_game), tutorial, demo, demo_short, puppyplay, hand_signals, exhibitionism, treat, nega_dice, pragma, furia, unspeakable_toy, yuki_cunnilingus, treat_cunnilingus, test, ereshkigal, treat_spanking

VAR debug = false
VAR web = true
VAR inVR = false

// Debug Jump
// Must Be Inside Unity Editor And Have 'Debug' Selected In Settings object
// Main.Unity > Story Core Settings
{ debug:
    /log Entering ink debug.
    -> Debug ->
    /log Exiting ink debug.
}

~ setDeviation(deviation)

-> game_start




