# execute as entity that has a r_clicked score of 1 or more
execute as @e[scores={r_clicked=1..}] at @s anchored eyes positioned ^ ^ ^.5 run function rc:instant/start
# reset all entities r_clicked score
scoreboard players set @e r_clicked 0
