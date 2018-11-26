# title: Dominatrix Simulator Scripts
# theme: dark

INCLUDE vars
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
INCLUDE nega/reward_dice
INCLUDE yuki/hub
INCLUDE yuki/intro
INCLUDE yuki/lore
INCLUDE yuki/punishment_edging
INCLUDE yuki/review
INCLUDE yuki/reward_bathe
INCLUDE yuki/reward_massage
INCLUDE yuki/task_fanning
INCLUDE nega/generic_responses
INCLUDE yuki/generic_responses









VAR web = true

-> table_of_contents

=== table_of_contents ===

+ Full Game
    -> game_intro_web

+ Entry Hub
    -> unlock_all -> entry_hub

+ Yuki Intro 2.2
    ~ yuki_unlocked = true
    -> yuki_intro

+ Yuki Punishment Edging 2.0 
    -> unlock_all -> yuki_punishment_edging

+ Yuki Reward Massage 
    -> unlock_all -> yuki_reward_massage

+ Headmistress Intro 
    ~ yuki_unlocked = true
    ~ headmistress_unlocked = true
    -> headmistress_intro

+ Headmistress Punishment Spanking 
    -> unlock_all -> headmistress_punishment_spanking

+ Nega Intro
    -> unlock_all -> nega_intro

