attribute @s minecraft:armor modifier remove origins:elytrian_chestplate

execute unless predicate origins:elytrian_chestplate_active run return fail

execute if items entity @s inventory.0 minecraft:leather_chestplate run attribute @s minecraft:armor modifier add origins:elytrian_chestplate 3 add_value
execute if items entity @s inventory.0 minecraft:leather_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 80

execute if items entity @s inventory.0 minecraft:golden_chestplate run attribute @s minecraft:armor modifier add origins:elytrian_chestplate 5 add_value
execute if items entity @s inventory.0 minecraft:golden_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 112

execute if items entity @s inventory.0 minecraft:chainmail_chestplate run attribute @s minecraft:armor modifier add origins:elytrian_chestplate 5 add_value
execute if items entity @s inventory.0 minecraft:chainmail_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 240