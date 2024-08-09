data modify storage origins:storage Settings set value {}
function origins:default_avian
function origins:default_blazeborn
function origins:default_bumblebee
function origins:default_elytrian
function origins:default_enderian
function origins:default_feline
function origins:default_fox
function origins:default_inchling
function origins:default_merling
execute unless data storage origins:storage Settings.DimensionData run data modify storage origins:storage Settings.DimensionData set value {}
execute unless data storage origins:storage Settings.DimensionData."minecraft:overworld" run data modify storage origins:storage Settings.DimensionData."minecraft:overworld" set value {Min:-64,Max:319}
execute unless data storage origins:storage Settings.DimensionData."minecraft:the_nether" run data modify storage origins:storage Settings.DimensionData."minecraft:the_nether" set value {Min:32,Max:127}
execute unless data storage origins:storage Settings.DimensionData."minecraft:the_end" run data modify storage origins:storage Settings.DimensionData."minecraft:the_end" set value {Min:-64,Max:319}