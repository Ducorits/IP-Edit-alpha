# main scoreboard
scoreboard objectives remove ip_edit

# portal scoreboards
scoreboard objectives remove portal_width
scoreboard objectives remove portal_height

# dimension scoreboards
scoreboard objectives remove dimension_info
data remove storage minecraft:ip_edit Dimension

# destination scoreboards
scoreboard objectives remove destinationX
scoreboard objectives remove destinationY
scoreboard objectives remove destinationZ


# menu scoreboards
scoreboard objectives remove ipe_menu
scoreboard objectives remove ipe_function
scoreboard objectives remove ipe_mode

# other scoreboards
scoreboard objectives remove ipe_drop
scoreboard objectives remove ipe_click

# stop loops
schedule clear ipe:wand/loop

# raycast system
function rc:uninstall

#disable datapack altogether
datapack disable "file/IP-Edit-Alpha"