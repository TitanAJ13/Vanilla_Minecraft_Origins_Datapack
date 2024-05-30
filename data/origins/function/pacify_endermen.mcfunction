$execute at @s as @e[type=enderman,distance=..10,nbt={AngryAt:$(UUID)}] at @s anchored eyes run summon endermite ^ ^ ^ {Tags:["Target"],attributes:[{id:"minecraft:generic.scale",base:0.0d}],NoAI:1b}
$execute at @s as @e[type=enderman,distance=..10,nbt={AngryAt:$(UUID)}] at @s run data modify entity @s AngryAt set from entity @e[type=endermite,sort=nearest,limit=1,tag=Target] UUID
execute as @e[type=endermite,tag=Target] at @s run tp @s ~ -80 ~
kill @e[type=endermite,tag=Target]