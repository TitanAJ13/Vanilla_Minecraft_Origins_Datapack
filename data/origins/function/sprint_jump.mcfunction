$attribute @s minecraft:generic.jump_strength base set $(BaseJumpStrength)

$attribute @s[tag=Sprinted,scores={originsCooldownTimer=..0},predicate=!origins:in_water] minecraft:generic.jump_strength base set $(SprintJumpStrength)
$scoreboard players set @s[tag=Sprinted,scores={originsCooldownTimer=..0},tag=Jumped,predicate=!origins:in_water,nbt={attributes:[{id:"minecraft:generic.jump_strength",base:$(SprintJumpStrength)}]}] originsCooldownTimer $(Cooldown)
$execute unless score 0 originsConstant matches $(Cooldown).. run scoreboard players add @s[tag=Sprinted,tag=Jumped,scores={originsCooldownTimer=$(Cooldown)},predicate=!origins:in_water] originsCooldownTimer 20
tag @s[tag=Sprinted,tag=Jumped] add ShowCooldown
tag @s[tag=Sprinted] remove Sprinted
tag @s[tag=Jumped] remove Jumped