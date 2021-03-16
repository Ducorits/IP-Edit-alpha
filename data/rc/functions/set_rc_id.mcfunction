# Set executors rc_id score to the fake player %rc_id's rc_id score.
scoreboard players operation @s rc_id = %rc_ids rc_id
# Update the fake player %rc_id's rc_id score so the nect player has a unique rc_id score.
scoreboard players add %rc_ids rc_id 1