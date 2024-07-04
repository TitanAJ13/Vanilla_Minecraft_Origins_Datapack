$execute store result score ValueCheck originsConstant run data get block $(X) $(Y) $(Z) $(Path) 100000000000000000000000000000
execute unless score ValueCheck originsConstant matches 0 run return 1
$execute store result score ValueCheck originsConstant run data get block $(X) $(Y) $(Z) $(Path)
execute unless score ValueCheck originsConstant matches 0 run return 0
$data modify storage origins:storage Settings.Value set from block $(X) $(Y) $(Z) $(Path)
return run function origins:integer_test with storage origins:storage Settings