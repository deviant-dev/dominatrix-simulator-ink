=== headmistress_hub ===
- (hub)

{web: <b>Headmistress Hub</b>}
-> summary(hub) -> 


{ hub > 1: Hi again! | Hi! }

{ 
    - punishments > 0 :
        Are you here for your punishment?
        + [yes] -> choose_punishment
        + [no] No? -> check_task
    - rewards > 0 :
        Are you here for your reward?
        + [yes] -> choose_reward
        + [no] No? -> check_task
    - else:
        -> check_task
}

- { punishments == 0 && rewards == 0:
    You must be here to serve me!
}

- (check_task) Looking to serve me, then?

+ [yes] -> choose_task
+ [no] -> main_hub

= choose_punishment
// Eventually we'll have the game randomly pick here.
-> headmistress_punishment_flogging -> main_hub

= choose_reward
// Eventually we'll have the game randomly pick here.
-> headmistress_reward_cunnilingus -> main_hub

= choose_task
// Eventually we'll have the game randomly pick here.
-> headmistress_task_flogging -> main_hub