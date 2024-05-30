$summon armor_stand ~ ~0.52 ~ {ArmorItems:[{id:"minecraft:armor_stand",count:1,components:{custom_data:{Owner:$(UUID)}}},{},{},{}],Marker:1b,Tags:["MomentumStop"]}
$ride @s mount @e[tag=MomentumStop,type=armor_stand,nbt={ArmorItems:[{id:"minecraft:armor_stand",count:1,components:{"minecraft:custom_data":{Owner:$(UUID)}}},{},{},{}]},limit=1]
attribute @s minecraft:generic.gravity base set 0
$kill @e[tag=MomentumStop,type=armor_stand,nbt={ArmorItems:[{id:"minecraft:armor_stand",count:1,components:{"minecraft:custom_data":{Owner:$(UUID)}}},{},{},{}]},limit=1]
#      @e[type=armor_stand,tag=MomentumStop,nbt={ArmorItems:[{id:"minecraft:armor_stand",count:1,components:{"minecraft:custom_data":{Owner:$(UUID)}}},{},{},{}]}]