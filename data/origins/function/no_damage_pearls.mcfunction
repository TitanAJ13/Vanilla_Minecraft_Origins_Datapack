$execute as @s[tag=!HasMarker] at @s summon minecraft:marker run data merge entity @s {Tags:["NoDamPearl"],data:{PearlID:$(UUID),Owner:$(Owner),PearlX:0.0d,PearlY:0.0d,PearlZ:0.0d}}
$execute as @s[tag=!HasMarker] if entity @e[type=marker,tag=NoDamPearl,nbt={data:{PearlID:$(UUID)}}] run tag @s add HasMarker
$execute as @s[tag=HasMarker,nbt=!{Owner:$(UUID)}] run data modify entity @s Owner set from entity @e[type=marker,tag=NoDamPearl,nbt={data:{PearlID:$(UUID)}},limit=1] UUID