gamemode adventure @s
tag @s add Stay1
tellraw @s [{"text":"Welcome to this unique Minecraft experience!\nTo get started, read the list of origins below and take your pick! Be careful though, unless you obtain a special crystal later in the game, you won't be able to choose an origin again...","color":"white"},{"text":"\n\nHave fun with your new abilities!","color":"gold"}]
execute as @s run function origins:choose
tag @s add StartChoice