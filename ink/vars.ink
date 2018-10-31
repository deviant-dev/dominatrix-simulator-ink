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

VAR isBoy = true
VAR player_name = "boy"
VAR player_he = "he"
VAR player_him = "him"
VAR player_cock = "cock"
VAR player_dick = "dick"
VAR player_penis = "penis"
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

// Fallback for isVideo() external function
=== function isVideo() ===
~ return false

=== function setGender(gender) ===
{
    - gender == "m":
        ~ isBoy = true
        ~ player_name = "boy"
        ~ player_he = "he"
        ~ player_him = "him"
        ~ player_cock = "cock"
        ~ player_dick = "dick"
        ~ player_penis = "penis"
    - gender == "f":
        ~ isBoy = false
        ~ player_name = "girl"
        ~ player_he = "she"
        ~ player_him = "her"
        ~ player_cock = "cunt"
        ~ player_dick = "pussy"
        ~ player_penis = "vagina"
}

~ return

=== select_gender ===
    + [Male]
        ~ setGender("m")
    + [Female]
        ~ setGender("f")
- ->->