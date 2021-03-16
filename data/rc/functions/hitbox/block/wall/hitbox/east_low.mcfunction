# fence east
# set scoreboard corner values
scoreboard players set @s cor0X 500
scoreboard players set @s cor0Y 0
scoreboard players set @s cor0Z 313

scoreboard players set @s cor1X 1000
scoreboard players set @s cor1Y 875
scoreboard players set @s cor1Z 687

# see if pos of ray entity is within corner scores
execute if score @s rayX > @s cor0X if score @s rayY > @s cor0Y if score @s rayZ > @s cor0Z if score @s rayX < @s cor1X if score @s rayY < @s cor1Y if score @s rayZ < @s cor1Z run tag @s add stop
