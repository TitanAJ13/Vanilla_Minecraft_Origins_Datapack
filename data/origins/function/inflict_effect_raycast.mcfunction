execute as @s at @s run scoreboard players set @e[nbt={HurtTime:10s},distance=..5] originsInflictEffectPriority 0
scoreboard players set @s originsInflictEffectPriority -1
execute as @s at @s anchored eyes positioned ^ ^ ^0.2 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 13
execute as @s at @s anchored eyes positioned ^ ^ ^0.6 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 12
execute as @s at @s anchored eyes positioned ^ ^ ^1 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 11
execute as @s at @s anchored eyes positioned ^ ^ ^1.4 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 10
execute as @s at @s anchored eyes positioned ^ ^ ^1.8 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 9
execute as @s at @s anchored eyes positioned ^ ^ ^2.2 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 8
execute as @s at @s anchored eyes positioned ^ ^ ^2.6 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 7
execute as @s at @s anchored eyes positioned ^ ^ ^3 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 6
execute as @s at @s anchored eyes positioned ^ ^ ^3.4 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 5
execute as @s at @s anchored eyes positioned ^ ^ ^3.8 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 4
execute as @s at @s anchored eyes positioned ^ ^ ^4.2 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 3
execute as @s at @s anchored eyes positioned ^ ^ ^4.6 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 2
execute as @s at @s anchored eyes positioned ^ ^ ^5 run scoreboard players set @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority 1
tag @s remove Attacked
$execute as @s at @s run effect give @e[scores={originsInflictEffectPriority=13},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=12},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=12..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=11},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=11..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=10},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=10..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=9},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=9..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=8},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=8..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=7},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=7..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=6},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=6..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=5},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=5..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=4},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=4..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=3},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=3..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=2},distance=..5,limit=1] $(Id) $(Duration) 1 false
$execute as @s at @s unless entity @e[scores={originsInflictEffectPriority=2..13},distance=..5] run effect give @e[scores={originsInflictEffectPriority=1},distance=..5,limit=1] $(Id) $(Duration) 1 false

scoreboard players reset @e[scores={originsInflictEffectPriority=-1..13}] originsInflictEffectPriority