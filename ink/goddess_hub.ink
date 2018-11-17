=== goddess_hub ===
- (hub)

{web: <b>Goddess Hub</b>}
-> summary(hub) -> 

{ 
    - punishments > 0 :
        You require correction. Go get your punishments and perhaps we'll talk.
        -> main_hub
    - rewards >= 10 :
        My, you have been good. Here for your reward?
        + [yes] -> choose_reward
        + [no] No? Then out of my sight. -> main_hub
    - else:
        You are not yet worthy.
        Raise your standing with my Mistresses
        and save your high marks
        and perhaps I'll entertain your presence.
        Ten should suffice.
        Now leave.
        + [yes] -> main_hub
        + [no]
            No? Then take a punishment and leave anyway.
            ~ punishments++
            -> main_hub
}

= choose_reward
// Eventually we'll have the game randomly pick here.
-> goddess_reward_huge -> hub
