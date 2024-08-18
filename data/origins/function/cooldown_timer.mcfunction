execute as @a unless score @s originsCooldownTimer matches 0.. run scoreboard players set @s originsCooldownTimer 0
scoreboard players remove @a[scores={originsCooldownTimer=21..}] originsCooldownTimer 1
execute as @a run scoreboard players operation @s originsCooldownMin = @s originsCooldownTimer
execute as @a run scoreboard players operation @s originsCooldownMin /= 1200 originsConstant
execute as @a run scoreboard players operation @s originsCooldownSec = @s originsCooldownTimer
execute as @a run scoreboard players operation @s originsCooldownSec /= 20 originsConstant
execute as @a run scoreboard players operation @s originsCooldownSec %= 60 originsConstant

execute as @a[tag=ShowCooldown] if score @s originsCooldownMin matches 1.. if score @s originsCooldownSec matches 10.. run title @s actionbar [{"text":"Cooldown: \u0020 \u0020 \u0020 "},{"score":{"name":"*","objective":"originsCooldownMin"}},{"text":":"},{"score":{"name":"*","objective":"originsCooldownSec"}}]
execute as @a[tag=ShowCooldown] if score @s originsCooldownMin matches 1.. if score @s originsCooldownSec matches 0..9 run title @s actionbar [{"text":"Cooldown: \u0020 \u0020 \u0020 "},{"score":{"name":"*","objective":"originsCooldownMin"}},{"text":":0"},{"score":{"name":"*","objective":"originsCooldownSec"}}]
execute as @a[tag=ShowCooldown] if score @s originsCooldownMin matches 0 if score @s originsCooldownSec matches 10.. run title @s actionbar [{"text":"Cooldown: \u0020 \u0020 \u0020 0"},{"text":":"},{"score":{"name":"*","objective":"originsCooldownSec"}}]
execute as @a[tag=ShowCooldown] if score @s originsCooldownMin matches 0 if score @s originsCooldownSec matches 0..9 run title @s actionbar [{"text":"Cooldown: \u0020 \u0020 \u0020 0"},{"text":":0"},{"score":{"name":"*","objective":"originsCooldownSec"}}]
scoreboard players set @a[scores={originsCooldownTimer=20}] originsCooldownTimer 0
execute as @a[tag=ShowCooldown,scores={originsCooldownTimer=0}] run title @s actionbar {"text":""}
tag @a[tag=ShowCooldown,scores={originsCooldownTimer=0}] remove ShowCooldown