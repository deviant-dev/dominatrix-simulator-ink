// List of options for kinks and kink levels.
LIST kink_list = sextoy, bondage, discipline, humiliation, worship, training
LIST kink_level = no = 0, maybe, yes

// Player kink tracking
VAR kinks_yes = ()
VAR kinks_maybe = ()
VAR kinks_no = ()

// Used by the engine to know what activity to load next.
// Accepts specific activity names as well as "tag:<activity_tag>"
VAR load_activity = ""

VAR player_name = "none"
VAR player_safeword = "red"

// function to set a kink's preference

=== function set_kink(kink, state) ===
{
    - state == no:
        ~ kinks_no += kink
        ~ kinks_maybe -= kink
        ~ kinks_yes -= kink
    - state == maybe:
        ~ kinks_no -= kink
        ~ kinks_maybe += kink
        ~ kinks_yes -= kink
    - state == yes:
        ~ kinks_no -= kink
        ~ kinks_maybe -= kink
        ~ kinks_yes += kink
}

// Fallback for isDebug() external function
=== function isDebug() ===
~ return false