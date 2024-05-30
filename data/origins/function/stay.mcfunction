execute as @a[tag=Stay,tag=!Staying] at @s summon minecraft:armor_stand run data merge entity @s {Invisible:1b,NoGravity:1b,Tags:["StayHere"],DisabledSlots:4144959}
tag @a[tag=Stay,tag=!Staying] add Staying
execute as @a[tag=Stay,tag=Staying] at @s run tp @s @e[type=minecraft:armor_stand,tag=StayHere,sort=nearest,limit=1]
tag @a[tag=!Stay,tag=Staying] add KillStay
tag @a[tag=KillStay,tag=Staying] remove Staying
execute as @a[tag=KillStay] at @s run kill @e[type=minecraft:armor_stand,tag=StayHere,sort=nearest,limit=1]
tag @a[tag=KillStay] remove KillStay

effect give @a[tag=Stay1] minecraft:blindness 2 255 true
effect give @a[tag=Stay1] minecraft:slowness 1 255 true
effect give @a[tag=Stay1] minecraft:resistance 5 255 false
effect give @a[tag=Stay1] minecraft:invisibility 2 255 true