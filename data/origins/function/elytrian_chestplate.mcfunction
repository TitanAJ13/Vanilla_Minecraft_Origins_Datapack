attribute @s minecraft:generic.armor modifier remove origins:elytrian_chestplate

execute if items entity @s inventory.0 minecraft:leather_chestplate run attribute @s minecraft:generic.armor modifier add origins:elytrian_chestplate 3 add_value
execute if items entity @s inventory.0 minecraft:leather_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 80

execute if items entity @s inventory.0 minecraft:golden_chestplate run attribute @s minecraft:generic.armor modifier add origins:elytrian_chestplate 5 add_value
execute if items entity @s inventory.0 minecraft:golden_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 112

execute if items entity @s inventory.0 minecraft:chainmail_chestplate run attribute @s minecraft:generic.armor modifier add origins:elytrian_chestplate 5 add_value
execute if items entity @s inventory.0 minecraft:chainmail_chestplate run return run scoreboard players set @s originsElytrianChestplateDurability 240