#Avian

execute store result storage origins:storage Settings.Avian.SleepHeight int 1 run data get storage origins:storage Settings.Avian.SleepHeight
execute store result storage origins:storage Settings.Avian.Vegetarianism byte 1 run data get storage origins:storage Settings.Avian.Vegetarianism

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.MovementSpeed"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.MovementSpeed double 1 run data get storage origins:storage Settings.Avian.MovementSpeed

execute store result storage origins:storage Settings.Avian.EggCount int 1 run data get storage origins:storage Settings.Avian.EggCount

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.InitialGravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.InitialGravity double 1 run data get storage origins:storage Settings.Avian.FallMechanics.InitialGravity

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.InitialJump"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.InitialJump double 1 run data get storage origins:storage Settings.Avian.FallMechanics.InitialJump

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.InitialFallDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.InitialFallDamage double 1 run data get storage origins:storage Settings.Avian.FallMechanics.InitialFallDamage

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.InitialFallHeight"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.InitialFallHeight double 1 run data get storage origins:storage Settings.Avian.FallMechanics.InitialFallHeight

execute store result storage origins:storage Settings.Avian.FallMechanics.StopInRain byte 1 run data get storage origins:storage Settings.Avian.FallMechanics.StopInRain

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.InitialGravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.InitialGravity double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.InitialGravity

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.SlowJump"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.SlowJump double 1 run data get storage origins:storage Settings.Avian.FallMechanics.SlowJump

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.SlowFallDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.SlowFallDamage double 1 run data get storage origins:storage Settings.Avian.FallMechanics.SlowFallDamage

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Avian.FallMechanics.SlowFallHeight"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Avian.FallMechanics.SlowFallHeight double 1 run data get storage origins:storage Settings.Avian.FallMechanics.SlowFallHeight

#Blazeborn

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Blazeborn.FireStrengthMultiplier"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Blazeborn.FireStrengthMultiplier double 1 run data get storage origins:storage Settings.Blazeborn.FireStrengthMultiplier

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Blazeborn.WaterDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Blazeborn.WaterDamage double 1 run data get storage origins:storage Settings.Blazeborn.WaterDamage

execute store result storage origins:storage Settings.Blazeborn.NetherSpawn byte 1 run data get storage origins:storage Settings.Blazeborn.NetherSpawn

#Bumblebee

execute store result storage origins:storage Settings.Bumblebee.PoisonDuration int 1 run data get storage origins:storage Settings.Bumblebee.PoisonDuration

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.WaterStrengthMultiplier"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.WaterStrengthMultiplier double 1 run data get storage origins:storage Settings.Bumblebee.WaterStrengthMultiplier

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.InitialGravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.InitialGravity double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.InitialGravity

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.InitialJump"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.InitialJump double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.InitialJump

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.InitialFallDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.InitialFallDamage double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.InitialFallDamage

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.InitialFallHeight"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.InitialFallHeight double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.InitialFallHeight

execute store result storage origins:storage Settings.Bumblebee.FallMechanics.StopInRain byte 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.StopInRain

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.SlowGravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.SlowGravity double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.SlowGravity

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.SlowJump"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.SlowJump double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.SlowJump

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.SlowFallDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.SlowFallDamage double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.SlowFallDamage

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FallMechanics.SlowFallHeight"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FallMechanics.SlowFallHeight double 1 run data get storage origins:storage Settings.Bumblebee.FallMechanics.SlowFallHeight

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Bumblebee.FloatMechanics.DescendAcceleration"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Bumblebee.FloatMechanics.DescendAcceleration double 1 run data get storage origins:storage Settings.Bumblebee.FloatMechanics.DescendAcceleration

execute store result storage origins:storage Settings.Bumblebee.FloatMechanics.StopInRain byte 1 run data get storage origins:storage Settings.Bumblebee.FloatMechanics.StopInRain
execute store result storage origins:storage Settings.Bumblebee.FloatMechanics.StopOnFire byte 1 run data get storage origins:storage Settings.Bumblebee.FloatMechanics.StopOnFire
execute store result storage origins:storage Settings.Bumblebee.FloatMechanics.StopInDay byte 1 run data get storage origins:storage Settings.Bumblebee.FloatMechanics.StopInDay
execute store result storage origins:storage Settings.Bumblebee.FloatMechanics.StopInNight byte 1 run data get storage origins:storage Settings.Bumblebee.FloatMechanics.StopInNight

#Elytrian

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Elytrian.AirStrengthMultiplier"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Elytrian.AirStrengthMultiplier double 1 run data get storage origins:storage Settings.Elytrian.AirStrengthMultiplier

execute store result storage origins:storage Settings.Elytrian.IncreasedFallDamage byte 1 run data get storage origins:storage Settings.Elytrian.IncreasedFallDamage
execute store result storage origins:storage Settings.Elytrian.IncreasedKineticDamage byte 1 run data get storage origins:storage Settings.Elytrian.IncreasedKineticDamage
execute store result storage origins:storage Settings.Elytrian.ExtraChestplateSlot byte 1 run data get storage origins:storage Settings.Elytrian.ExtraChestplateSlot

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Elytrian.LaunchMechanics.LaunchJumpStrength"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Elytrian.LaunchMechanics.LaunchJumpStrength double 1 run data get storage origins:storage Settings.Elytrian.LaunchMechanics.LaunchJumpStrength

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Elytrian.LaunchMechanics.LaunchMechanics.BaseJumpStrength"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Elytrian.LaunchMechanics.LaunchMechanics.BaseJumpStrength double 1 run data get storage origins:storage Settings.Elytrian.LaunchMechanics.LaunchMechanics.BaseJumpStrength

execute store result storage origins:storage Settings.Elytrian.LaunchMechanics.Cooldown int 1 run data get storage origins:storage Settings.Elytrian.LaunchMechanics.Cooldown
data modify storage origins:storage Settings.Elytrian.LaunchMechanics.Item set string storage origins:storage Settings.Elytrian.LaunchMechanics.Item

#Enderian

execute store result storage origins:storage Settings.Enderian.NoPearlDamage byte 1 run data get storage origins:storage Settings.Enderian.NoPearlDamage
execute store result storage origins:storage Settings.Enderian.CanUseTeams byte 1 run data get storage origins:storage Settings.Enderian.CanUseTeams

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Enderian.BlockReach"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Enderian.BlockReach double 1 run data get storage origins:storage Settings.Enderian.BlockReach

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Enderian.EntityReach"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Enderian.EntityReach double 1 run data get storage origins:storage Settings.Enderian.EntityReach

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Enderian.WaterDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Enderian.WaterDamage double 1 run data get storage origins:storage Settings.Enderian.WaterDamage

#Feline

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Feline.SprintJumpStrength"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Feline.SprintJumpStrength double 1 run data get storage origins:storage Settings.Feline.SprintJumpStrength

execute store result storage origins:storage Settings.Feline.SprintJumpCooldown int 1 run data get storage origins:storage Settings.Feline.SprintJumpCooldown
execute store result storage origins:storage Settings.Feline.Pescatarianism byte 1 run data get storage origins:storage Settings.Feline.Pescatarianism

#Fox

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Fox.MovementSpeed"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Fox.MovementSpeed double 1 run data get storage origins:storage Settings.Fox.MovementSpeed

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Fox.UnderdogSpeedMultiplier"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Fox.UnderdogSpeedMultiplier double 1 run data get storage origins:storage Settings.Fox.UnderdogSpeedMultiplier

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Fox.UnderdogStrengthMultiplier"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Fox.UnderdogStrengthMultiplier double 1 run data get storage origins:storage Settings.Fox.UnderdogStrengthMultiplier

execute store result storage origins:storage Settings.Fox.UnderdogStartHealth int 1 run data get storage origins:storage Settings.Fox.UnderdogStartHealth
execute store result storage origins:storage Settings.Fox.CanHoldShields byte 1 run data get storage origins:storage Settings.Fox.CanHoldShields

#Inchling

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.AttackSpeed"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.AttackSpeed double 1 run data get storage origins:storage Settings.Inchling.AttackSpeed

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.MiningSpeed"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.MiningSpeed double 1 run data get storage origins:storage Settings.Inchling.MiningSpeed

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.BlockReach"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.BlockReach double 1 run data get storage origins:storage Settings.Inchling.BlockReach

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.EntityReach"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.EntityReach double 1 run data get storage origins:storage Settings.Inchling.EntityReach

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.Gravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.Gravity double 1 run data get storage origins:storage Settings.Inchling.Gravity

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Inchling.StepHeight"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Inchling.StepHeight double 1 run data get storage origins:storage Settings.Inchling.StepHeight

#Merling

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Merling.SinkGravity"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Merling.SinkGravity double 1 run data get storage origins:storage Settings.Merling.SinkGravity

execute store result storage origins:storage Settings.Merling.LandSuffocation byte 1 run data get storage origins:storage Settings.Merling.LandSuffocation
execute store result storage origins:storage Settings.Merling.SuffocationMechanics.AffectedByRespiration byte 1 run data get storage origins:storage Settings.Merling.SuffocationMechanics.AffectedByRespiration
execute store result storage origins:storage Settings.Merling.SuffocationMechanics.BetterInRain byte 1 run data get storage origins:storage Settings.Merling.SuffocationMechanics.BetterInRain

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Merling.SuffocationMechanics.RainOxygenUseChance"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Merling.SuffocationMechanics.RainOxygenUseChance double 1 run data get storage origins:storage Settings.Merling.SuffocationMechanics.RainOxygenUseChance

execute store result score ValueCheck originsConstant run function origins:number_test_storage {Storage:"origins:storage",Path:"Settings.Merling.SuffocationMechanics.SuffocationDamage"}
execute if score ValueCheck originsConstant matches 0 store result storage origins:storage Settings.Merling.SuffocationMechanics.SuffocationDamage double 1 run data get storage origins:storage Settings.Merling.SuffocationMechanics.SuffocationDamage