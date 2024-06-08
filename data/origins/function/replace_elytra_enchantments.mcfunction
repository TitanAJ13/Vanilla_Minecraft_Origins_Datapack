execute store result score @s originsElytrianChestplateUnbreaking run data get entity @s Inventory[{Slot:9b}].components."minecraft:enchantments".levels."minecraft:unbreaking"

execute if items entity @s inventory.0 #origins:light_armor run item replace entity @s armor.chest from entity @s inventory.0 origins:elytrian_chestplate
execute unless items entity @s inventory.0 #origins:light_armor run item modify entity @s armor.chest {"function":"set_custom_data","tag":"{NoChestplate:1b}"}

function origins:elytrian_chestplate

advancement revoke @s only origins:elytrian/equip_chestplate