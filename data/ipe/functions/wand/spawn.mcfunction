#give @s minecraft:warped_fungus_on_a_stick{Tags:["ip_edit"],display:{Name:'{"text":"Space Warper 0.1"}',Lore:['{"text":"big boy warp wand."}']}}

execute at @e[type=item,tag=crafting,limit=1] run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 1 1

execute as @e[type=item,tag=crafting,limit=1] at @s run summon item ~ ~ ~ {Item:{id: "minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Damage: 0,Tags:["ip_edit"],display:{Name:'{"text":"Space Warper 0.1"}',Lore:['{"text":"big boy warp wand."}']}}}}

execute as @e[type=item,tag=crafting] run kill @s