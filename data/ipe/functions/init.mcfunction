# This is the "init" function. This will play ONCE when the pack is reloaded/loaded!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > load
# that file says what functions get played on load.

# main scoreboard
scoreboard objectives add ip_edit dummy

# portal scoreboards
scoreboard objectives add portal_width dummy
scoreboard objectives add portal_height dummy

# dimension scoreboards
scoreboard objectives add dimension_info dummy
function ipe:function/dimension/reset

# destination scoreboards
scoreboard objectives add destinationX dummy
scoreboard objectives add destinationY dummy
scoreboard objectives add destinationZ dummy


#menu scoreboards
scoreboard objectives add ipe_menu trigger
scoreboard objectives add ipe_function trigger
scoreboard objectives add ipe_mode trigger

scoreboard players enable @a ipe_function
scoreboard players enable @a ipe_menu
scoreboard players enable @a ipe_mode

# start loops
function ipe:wand/loop

# other new scoreboards
scoreboard objectives add ipe_drop minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ipe_click minecraft.used:minecraft.warped_fungus_on_a_stick


# set constants
scoreboard players set %2 ip_edit 2

