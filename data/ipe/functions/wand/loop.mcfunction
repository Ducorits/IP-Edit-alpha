execute as @e[type=item,nbt={Item:{id: "minecraft:warped_fungus_on_a_stick",Count: 1b}},tag=!crafting] unless entity @s[nbt={Item:{tag:{Tags:["ip_edit"]}}}] at @s if entity @e[distance=0..1,type=item,nbt={Item:{id: "minecraft:ender_eye",Count:1b}},tag=!crafting] run function ipe:wand/create

schedule function ipe:wand/loop 10t replace