### THIS FUNCTION RUNS ONCE FOR EVERY IN-GAME TICK (20 TICK = 1 SECOND) ###
title @a actionbar {"text":"El datapack está funcionando."}


### Crafteo PapayaCoin ###
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:3b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}},distance=0..1,limit=1,sort=nearest] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s if block ~ ~-.1 ~ cauldron run summon minecraft:item ~ ~ ~ {Tags:["papayacoin"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{display:{Name:'{"text":"PapayaCoin","color": "gold","bold": true}',Lore:['{"text":"Moneda oficial de PapayaCraft 4","color":"blue","bold":true}']},HideFlags:127,CustomModelData:4,EntityTag:{Tags:["papayacoin"]}}}}
execute as @e[tag=papayacoin] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:3b}},sort=nearest,limit=1]
execute as @e[tag=papayacoin] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}},sort=nearest,limit=1]
execute as @e[tag=papayacoin] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=papayacoin] at @s run tag @s remove papayacoin