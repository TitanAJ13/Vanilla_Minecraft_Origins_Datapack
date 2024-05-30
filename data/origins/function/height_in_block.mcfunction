execute store result score @s originsPosY run data get entity @s Pos[1] 1000
execute store result score @s originsHeightInBlock run scoreboard players get @s originsPosY
scoreboard players operation @s originsHeightInBlock %= 1000 originsConstant
