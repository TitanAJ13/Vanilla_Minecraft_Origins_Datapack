$attribute @s[tag=!Sneaked] minecraft:generic.jump_strength base set $(BaseJumpStrength)
$attribute @s[tag=Sneaked,nbt=!{SelectedItem:{id:"$(Item)"}}] minecraft:generic.jump_strength base set $(BaseJumpStrength)
$attribute @s[tag=Sneaked,nbt={SelectedItem:{id:"$(Item)"}},scores={originsCooldownTimer=1..}] minecraft:generic.jump_strength base set $(BaseJumpStrength)
$attribute @s[tag=Sneaked,nbt={SelectedItem:{id:"$(Item)"}},scores={originsCooldownTimer=..0}] minecraft:generic.jump_strength base set $(LaunchJumpStrength)
$tag @s[tag=Jumped,tag=Sneaked,scores={originsCooldownTimer=..0},nbt={SelectedItem:{id:"$(Item)"}}] add Launched
$scoreboard players set @s[tag=Launched] originsCooldownTimer $(Cooldown)
$scoreboard players add @s[tag=Launched,scores={originsCooldownTimer=$(Cooldown)}] originsCooldownTimer 20
tag @s[tag=Launched] add ShowCooldown
tag @s[tag=Jumped] remove Jumped
tag @s[tag=Sneaked] remove Sneaked
tag @s[tag=Launched] remove Launched