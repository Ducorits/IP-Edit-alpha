# This is the "init" function. This will play ONCE when the pack is reloaded/loaded!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > load
# that file says what functions get played on load.


scoreboard objectives add ip_edit dummy
#scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add portal_width dummy
scoreboard objectives add portal_height dummy
scoreboard objectives add portal_width_offset dummy
scoreboard objectives add portal_height_offset dummy

# dimension stuff
scoreboard objectives add dimension_info dummy
function ipe:function/dimension/reset

#d estination stuff
scoreboard objectives add destinationX dummy
scoreboard objectives add destinationY dummy
scoreboard objectives add destinationZ dummy


#new menu stuff
scoreboard objectives add ipe_menu trigger
scoreboard objectives add ipe_function trigger
scoreboard objectives add ipe_mode trigger

scoreboard players enable @a ipe_function
scoreboard players enable @a ipe_menu
scoreboard players enable @a ipe_mode

#start loops
function ipe:wand/loop

#other new stuff
scoreboard objectives add ipe_drop minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ipe_click minecraft.used:minecraft.warped_fungus_on_a_stick

