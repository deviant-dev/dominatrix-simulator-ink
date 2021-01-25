# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE debug
INCLUDE vars
INCLUDE code
INCLUDE web
INCLUDE game_intro
INCLUDE game_outro
INCLUDE entry_hub
INCLUDE general/bad_touch

INCLUDE goddess/hub
INCLUDE goddess/intro
INCLUDE goddess/lore
INCLUDE goddess/generic_responses
INCLUDE goddess/monitoring
INCLUDE goddess/monitoring_intro
INCLUDE goddess/task_placeholder
INCLUDE goddess/punishment_placeholder
INCLUDE goddess/reward_placeholder
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
// INCLUDE headmistress/punishment_flogging
INCLUDE headmistress/punishment_spanking
INCLUDE headmistress/train_spanking
// INCLUDE headmistress/reward_cunnilingus
INCLUDE headmistress/reward_exhibitionism
INCLUDE headmistress/rewardmega_placeholder
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

INCLUDE pragma/hub
INCLUDE pragma/intro
INCLUDE pragma/task_placeholder
INCLUDE pragma/punishment_placeholder
INCLUDE pragma/reward_placeholder
INCLUDE pragma/rewardmega_placeholder

INCLUDE angel/hub
INCLUDE angel/intro
INCLUDE angel/task_placeholder
INCLUDE angel/punishment_placeholder
INCLUDE angel/reward_placeholder
INCLUDE angel/rewardmega_placeholder

INCLUDE furia/hub
INCLUDE furia/intro
INCLUDE furia/generic_responses
INCLUDE furia/task_placeholder
INCLUDE furia/punishment_placeholder
INCLUDE furia/reward_placeholder
INCLUDE furia/rewardmega_placeholder

INCLUDE caliste/hub
INCLUDE caliste/intro
INCLUDE caliste/task_placeholder
INCLUDE caliste/punishment_placeholder
INCLUDE caliste/reward_placeholder
INCLUDE caliste/rewardmega_placeholder

INCLUDE treat/hub
INCLUDE treat/intro
INCLUDE treat/session_placeholder
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
INCLUDE yuki/punishment_edging
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
INCLUDE yuki/rewardmega_placeholder
INCLUDE yuki/task_fanning
// INCLUDE yuki/task_teaservice
INCLUDE yuki/train_spanking
INCLUDE furia/task_gloryhole_training
INCLUDE treat/generic_responses
INCLUDE treat/monitoring






// EXTERNAL getNegaDie1()
// EXTERNAL getNegaDie2()
// EXTERNAL getNegaDie3()


// Flow Variables
LIST deviation = (full_game), tutorial, demo, puppyplay, hand_signals, exhibitionism, treat, nega_dice, pragma, furia

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


=== game_start ===

{ web: -> table_of_contents }

// -> exit has the logic for module starting locations
{
    - deviation == puppyplay:
        -> yuki_hub
    - deviation == hand_signals:
        -> headmistress_hub
    - deviation == treat:
        -> treat_care
    - deviation == nega_dice:
        -> nega_hub
    - deviation == pragma:
        -> pragma_hub
    - deviation == furia:
        -> furia_hub
    - inTutorial == false:
        -> entry_hub
    - else:
        -> game_intro
}


=== game_restart ===
// Make sure deviation is set in case the story state was reset
// via 'RestartStory()' in StoryTeller.
~ setDeviation(deviation)
-> game_start


=== load_game ===
-> load_path


// For deviations that start after the main game intro's gender check.
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


=== exit ===
/scene None

// {web: -> table_of_contents}
{just_changed != none:
    ~ profile_scene_count++
    {current_mistress != Treat:
        ~ treat_scenes_since_last_session ++
        
    - else:
        
        ~ treat_scenes_since_last_session = 0
    }
    
}

{
    - deviation == hand_signals:
        /scene none
        -> headmistress_hub
    - deviation == exhibitionism:
        /scene none
        -> headmistress_hub
    - deviation == puppyplay:
        /scene none
        -> yuki_hub
    - deviation == demo:
        -> pause(3) ->
        -> game_outro
    - deviation == treat:
        -> treat_care
    - deviation == nega_dice:
        -> nega_hub
    - deviation == pragma:
        -> pragma_hub
    - deviation == furia:
        -> furia_hub
}

-> pause(1) ->

{inTutorial or current_mistress == Goddess or current_mistress == Treat or just_changed == none:
    /log Skipping monitoring
    -> entry_hub
- else:
    {shuffle:
        - -> goddess_monitoring
        - -> treat_monitoring
        - -> entry_hub
        - -> entry_hub
        - -> entry_hub
        // - -> entry_hub
        // - -> entry_hub
    }
}
