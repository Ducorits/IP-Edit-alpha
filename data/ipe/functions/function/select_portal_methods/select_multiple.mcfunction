function rc:raycast/start

execute at @s as @e[type=immersive_portals:portal,tag=last_hit] unless score @s ip_owner_id = @p rc_id run scoreboard players operation @s ip_owner_id = @p rc_id

tag @e[type=immersive_portals:portal,tag=selected] add already_selected

tag @e[type=immersive_portals:portal,tag=last_hit] add selected

tag @e[type=immersive_portals:portal,tag=already_selected,tag=last_hit] remove selected

tag @e[type=immersive_portals:portal,tag=already_selected] remove already_selected