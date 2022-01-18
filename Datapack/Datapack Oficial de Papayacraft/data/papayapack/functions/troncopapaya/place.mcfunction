setblock ~ ~ ~ minecraft:stripped_spruce_log replace

execute positioned ^ ^ ^0.5 align xyz run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["troncopapaya"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5}}]}

kill @s