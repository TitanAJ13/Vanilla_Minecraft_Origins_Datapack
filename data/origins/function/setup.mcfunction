scoreboard objectives add originsPosX dummy
scoreboard objectives add originsPosY dummy
scoreboard objectives add originsPosZ dummy
scoreboard objectives add originsHeightInBlock dummy
scoreboard objectives add originsHealth health
scoreboard objectives add originsInWater dummy
scoreboard objectives add originsInWaterState dummy
scoreboard objectives add originsInWaterLow1 dummy
scoreboard objectives add originsInWaterLow2 dummy
scoreboard objectives add originsInWaterLow3 dummy
scoreboard objectives add originsInWaterLow4 dummy
scoreboard objectives add originsInWaterLow dummy
scoreboard objectives add originsInWaterMid dummy
scoreboard objectives add originsInWaterHigh dummy
scoreboard objectives add originsConstant dummy
scoreboard players set -1 originsConstant -1
scoreboard players set 0 originsConstant 0
scoreboard players set 1 originsConstant 1
scoreboard players set 3 originsConstant 3
scoreboard players set 5 originsConstant 5
scoreboard players set 13 originsConstant 13
scoreboard players set 16 originsConstant 16
scoreboard players set 20 originsConstant 20
scoreboard players set 40 originsConstant 40
scoreboard players set 60 originsConstant 60
scoreboard players set 120 originsConstant 120
scoreboard players set 125 originsConstant 125
scoreboard players set 169 originsConstant 169
scoreboard players set 160 originsConstant 160
scoreboard players set 256 originsConstant 256
scoreboard players set 600 originsConstant 600
scoreboard players set 1000 originsConstant 1000
scoreboard players set 1200 originsConstant 1200
scoreboard players set 10000 originsConstant 10000
scoreboard players set 1000000000 originsConstant 1000000000
scoreboard objectives add originsWaterType1 dummy
scoreboard objectives add originsWaterType2 dummy
scoreboard objectives add originsWaterType3 dummy
scoreboard objectives add originsWaterType4 dummy
scoreboard objectives add originsWaterTypeMax dummy
scoreboard objectives add originsChoiceType trigger
scoreboard objectives add originsSpawnSearch1 dummy
scoreboard objectives add originsSpawnSearch2 dummy
scoreboard objectives add originsSpawnSearch1_1 dummy
scoreboard objectives add originsSpawnSearch2_1 dummy
scoreboard objectives add originsDeathCount1 deathCount
scoreboard objectives add originsDeathCount2 deathCount
scoreboard objectives add originsFloat dummy
scoreboard objectives add originsDamageDealt1 minecraft.custom:minecraft.damage_dealt
scoreboard objectives add originsDamageDealt2 dummy
scoreboard objectives add originsInflictEffectPriority dummy
scoreboard objectives add originsInflictEffectRange dummy
scoreboard objectives add originsInflictEffectCount dummy
scoreboard objectives add originsDamageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add originsDamageTaken1 dummy
scoreboard objectives add originsDamageTaken2 dummy
scoreboard objectives add originsElytrianChestplateUnbreaking dummy
scoreboard objectives add originsElytrianChestplateDivider dummy
scoreboard objectives add originsElytrianChestplateDurability dummy
scoreboard objectives add originsJumped minecraft.custom:minecraft.jump
scoreboard objectives add originsCooldownTimer dummy
scoreboard objectives add originsCooldownMin dummy
scoreboard objectives add originsCooldownSec dummy
scoreboard objectives add originsCanSeeSky dummy
scoreboard objectives add originsScale dummy
scoreboard objectives add originsHeight dummy
scoreboard objectives add originsWidth dummy
scoreboard objectives add originsAirTimer dummy
scoreboard objectives add originsBreathingWater dummy
scoreboard objectives add originsRespirationLevel dummy
scoreboard objectives add originsRespirationDivider dummy
scoreboard objectives add originsKickSleepCount dummy
scoreboard objectives add originsEggThrown minecraft.used:minecraft.egg

team add originsDeAggroEndermen

execute unless data storage origins:storage Settings run function origins:default_settings
execute unless data storage origins:storage Settings.Avian run function origins:default_avian
execute unless data storage origins:storage Settings.Blazeborn run function origins:default_blazeborn
execute unless data storage origins:storage Settings.Bumblebee run function origins:default_bumblebee
execute unless data storage origins:storage Settings.Elytrian run function origins:default_elytrian
execute unless data storage origins:storage Settings.Enderian run function origins:default_enderian
execute unless data storage origins:storage Settings.Feline run function origins:default_feline
execute unless data storage origins:storage Settings.Fox run function origins:default_fox
execute unless data storage origins:storage Settings.Inchling run function origins:default_inchling
execute unless data storage origins:storage Settings.Merling run function origins:default_merling

scoreboard objectives add originsPosition1 dummy
scoreboard objectives add originsPosition2 dummy
scoreboard objectives add originsVelocity1 dummy
scoreboard objectives add originsVelocity2 dummy
scoreboard objectives add originsAcceleration dummy


tellraw @a {"text":"Origins Test Datapack has loaded!", "color":"gold"}