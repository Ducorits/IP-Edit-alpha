# update ray position based on vector magnitude
scoreboard players operation rayX rc_system += vecX rc_system
scoreboard players operation rayY rc_system += vecY rc_system
scoreboard players operation rayZ rc_system += vecZ rc_system
#execute unless block ^ ^ ^ air positioned ^ ^ ^.0625 run function rc:raycast/alt/vec_update
execute if score rayX rc_system matches 1000.. run scoreboard players remove rayX rc_system 1000
execute if score rayY rc_system matches 1000.. run scoreboard players remove rayY rc_system 1000
execute if score rayZ rc_system matches 1000.. run scoreboard players remove rayZ rc_system 1000

execute if score rayX rc_system matches ..0 run scoreboard players add rayX rc_system 1000
execute if score rayY rc_system matches ..0 run scoreboard players add rayY rc_system 1000
execute if score rayZ rc_system matches ..0 run scoreboard players add rayZ rc_system 1000