execute store result score @s originsPosX run data get entity @s Pos[0]
execute store result score @s originsPosZ run data get entity @s Pos[2]
scoreboard players operation @s originsPosX /= 16 originsConstant
scoreboard players operation @s originsPosZ /= 16 originsConstant
scoreboard players operation @s originsPosX *= 160 originsConstant
scoreboard players operation @s originsPosZ *= 160 originsConstant
execute store result entity @s Pos[0] double 0.1 run scoreboard players operation @s originsPosX += 5 originsConstant
execute store result entity @s Pos[2] double 0.1 run scoreboard players operation @s originsPosZ += 5 originsConstant
execute store result entity @s Pos[1] double 1 run scoreboard players get 120 originsConstant