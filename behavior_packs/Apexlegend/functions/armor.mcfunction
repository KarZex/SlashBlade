event entity @a[hasitem={location=slot.armor.chest,item=item:armor1}] zex:armor1
event entity @a[hasitem={location=slot.armor.chest,item=item:armor2}] zex:armor2
event entity @a[hasitem={location=slot.armor.chest,item=item:armor3}] zex:armor3
event entity @a[hasitem={location=slot.armor.chest,item=item:armor5}] zex:armor5

tag @a[hasitem={location=slot.armor.chest,item=item:armor1}] add armor
tag @a[hasitem={location=slot.armor.chest,item=item:armor2}] add armor
tag @a[hasitem={location=slot.armor.chest,item=item:armor3}] add armor
tag @a[hasitem={location=slot.armor.chest,item=item:armor5}] add armor

event entity @a[tag=!armor] zex:armor0

tag @a remove armor