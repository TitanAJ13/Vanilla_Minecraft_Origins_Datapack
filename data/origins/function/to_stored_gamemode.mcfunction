gamemode survival @s
execute if score @s originsStoredGamemode matches 0 run gamemode survival @s
execute if score @s originsStoredGamemode matches 1 run gamemode creative @s
execute if score @s originsStoredGamemode matches 2 run gamemode adventure @s
execute if score @s originsStoredGamemode matches 3 run gamemode spectator @s
scoreboard players reset @s originsStoredGamemode