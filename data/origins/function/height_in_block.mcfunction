execute store result score @s originsPosY run data get entity @s Pos[1] 10000
execute store result score @s originsHeightInBlock run scoreboard players get @s originsPosY
scoreboard players operation @s originsHeightInBlock %= 10000 originsConstant
