# This is the "init" function. This will play ONCE when the pack is reloaded/loaded!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > load
# that file says what functions get played on load.

# main scoreboard
scoreboard objectives add ip_edit dummy

# portal scoreboards
scoreboard objectives add portal_width dummy
scoreboard objectives add portal_height dummy

# box portal scoreboards
scoreboard objectives add ipe_mid_distance dummy
scoreboard objectives add ipe_box_midX dummy
scoreboard objectives add ipe_box_midY dummy
scoreboard objectives add ipe_box_midZ dummy
scoreboard objectives add ipe_box_destX dummy
scoreboard objectives add ipe_box_destY dummy
scoreboard objectives add ipe_box_destZ dummy

# dimension scoreboards
scoreboard objectives add dimension_info dummy
function ipe:function/dimension/reset

# destination scoreboards (unused)
# scoreboard objectives add destinationX dummy
# scoreboard objectives add destinationY dummy
# scoreboard objectives add destinationZ dummy

# portal body rotation scoreboards used in position and destination (unused)


#menu scoreboards
scoreboard objectives add ipe_menu trigger
scoreboard objectives add ipe_function trigger
scoreboard objectives add ipe_mode trigger


# start loops
function ipe:wand/loop

# schedule
schedule function ipe:enable_triggers 10t replace


# other new scoreboards
scoreboard objectives add ipe_drop minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ipe_click minecraft.used:minecraft.warped_fungus_on_a_stick


# set constants
scoreboard players set %2 ip_edit 2
scoreboard players set %1 ip_edit 1
scoreboard players set %-1 ip_edit -1
scoreboard players set %1000 ip_edit 1000
scoreboard players set %10000 ip_edit 10000

